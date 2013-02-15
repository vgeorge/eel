# encoding: utf-8
require 'rake'
require 'zip/zip'
require 'sqlite3'
require 'csv'

# TODO move this to a config file
db_filename = "web/eel.db"
schema_file = "scripts/db/schema.sql"
cnefe_files_dir = "data/cnefe/"
osmjs_path = "../osmium/osmjs/osmjs"
osmjs_script = "scripts/osm/osm2db.js"
osm_file = "data/osm/brazil.osm.pbf"
osm_nodes_csv = "data/osm/nodes.csv"
osm_nodes_tags_csv = "data/osm/nodes_tags.csv"
malhas_ftp_dir_url = "ftp://geoftp.ibge.gov.br/malhas_digitais/censo_2010/setores_censitarios/"

desc "Initialize database (destroy current db)"
task :initdb do |t|

  # delete old db, if exists
  if File.exist?(db_filename) then
    puts "Found an existing database file, deleting..."
    File.delete(db_filename)
  end

  # Run schema.sql
  `spatialite #{db_filename} < scripts/db/schema.sql `
  puts "Database schema created."



end

namespace :cnefe do
  
  desc "Init database for CNEFE import"
  task :initdb do
    
    puts "Using #{db_filename}"
    
    puts "Creating address and streetnames tables..."
    `spatialite #{db_filename} < scripts/addresses/schema.sql `
    
  end
  
  desc "Download all CNEFE files"
  task :baixar do
    puts "Execute './scripts/cnefe/download_cnefe_files.sh' para baixar todos arquivos do CNEFE."
  end
  
  desc "Importar arquivos do CNEFE baixados para o banco de dados."
  task :import do
    # check if db exists
     if not File.exist?(db_filename) then
       puts "Database not found. Run 'rake cnefe:initdb'"
       exit
     end

     # open database
     puts "Opening " + db_filename
     db = SQLite3::Database.new( db_filename )

     # variable that keeps previous line to avoid repeating queries
     last_line = ""

     Dir.glob(cnefe_files_dir + '*.zip') do |filename|
       if filename.include?("Layout.zip") then
          puts "Layout.zip skipped."
          exit
        end
       
       puts "Importing " + filename + " ... "

       Zip::ZipFile.foreach(filename) do |zipfile|
         zipfile.get_input_stream.each do |line|

           # load fields into variables
           uf_id               = line[0..1].gsub(' ','0')
           municipio_id        = line[2..6].gsub(' ','0')
           distrito_id         = line[7..8].gsub(' ','0')
           subdistrito_id      = line[9..10].gsub(' ','0')
           setor_id            = line[11..14].gsub(' ','0')
           situacao_setor      = line[15..15]
           tipo                = line[16..35].strip
           titulo              = line[36..65].strip
           nome                = line[66..125].strip
           numero              = line[126..133].strip
           modificador_numero  = line[134..140].strip
           complemento1        = line[141..160].strip
           complemento1_valor  = line[161..170].strip
           complemento2        = line[171..190].strip
           complemento2_valor  = line[191..200].strip
           complemento3        = line[201..220].strip
           complemento3_valor  = line[221..230].strip
           complemento4        = line[231..250].strip
           complemento4_valor  = line[251..260].strip
           complemento5        = line[261..280].strip
           complemento5_valor  = line[281..290].strip
           complemento6        = line[291..310].strip
           complemento6_valor  = line[311..320].strip
           latitude            = line[321..335].strip
           longitude           = line[336..350].strip
           localidade          = line[351..410].strip
           nulo                = line[411..470].strip
           especie             = line[471..472].strip
           identificacao       = line[473..512].strip
           multiplicidade      = line[513..513].strip
           domicilio_coletivo  = line[514..543].strip
           quadra              = line[544..546].strip
           face                = line[547..549].strip
           cep                 = line[550..558].strip

           # if line is diferent from previous, insert new logradouro
           if last_line != line[0..125] then
             db.execute( "insert or ignore into streetnames values (null, ?,?,?,?,?,?,?,?,?)", uf_id, municipio_id, distrito_id, subdistrito_id, setor_id, situacao_setor, tipo, titulo, nome)
             logradouro_id = db.last_insert_row_id
           end

     	  db.execute( "insert or ignore into addresses values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", logradouro_id, numero, modificador_numero, complemento1, complemento1_valor, complemento2, complemento2_valor, complemento3, complemento3_valor, complemento4, complemento4_valor, complemento5, complemento5_valor, complemento6, complemento6_valor, latitude, longitude, localidade, nulo, especie, identificacao, multiplicidade, domicilio_coletivo, quadra, face, cep)



           # keep this line to avoid repeating queries
           last_line = line[0..125]
         end    
       end
     end
  end

  
end


namespace :osm do

  desc "Prepara CSV a partir de dados do OSM, para importação no DB."
  task :csv do |t|
    cmd = osmjs_path + " -j " + osmjs_script + " " + osm_file
    puts cmd
    system (cmd)
  end

  desc "Import nodes from addressed.csv"
  task :import_osm do
    # delete old db, if exists
    if not File.exist?(db_filename) then
      puts "Database not found. Run 'rake db_init'"
      exit
    end

    puts "Opening " + db_filename
    db = SQLite3::Database.new( db_filename )

    # Import nodes
    CSV.foreach(osm_nodes_csv, {:col_sep => "\t"}) do |line|
      # db.execute( "insert or ignore into nodes (id, geom) values (?,?)", line[0], line[1])
    end

    # Import nodes tags
    CSV.foreach(osm_nodes_tags_csv, {:col_sep => "\t"}) do |line|
      db.execute( "insert or ignore into node_tags (id, k, v) values (?,?,?)", line[0], line[1], line[2])
    end


  end




end

namespace :limits do
  desc "Create tables for administrative boundaries"
  task :initdb do
    
    puts "Using #{db_filename}"
    
    puts "Importing EPSG table to allow reprojections..."
    `spatialite #{db_filename} < scripts/spatialite/epsg-sqlite.sql `

    puts "Creating limits tables..."
    `spatialite #{db_filename} < scripts/limits/schema.sql `
  end
  
  desc "Expand IBGE files and import to the database"
  task :import do
    
    puts "Expanding IBGE files..."
    `cd data/limits && for z in *.zip; do unzip -oj $z *SEE250GC_SIR.* -d shp; done`
    
    puts "Importing shapefiles..."
    `spatialite #{db_filename} < scripts/limits/import_shp.sql `
    
  end
    
  
  desc "Get administrative and censitary limits from IBGE's FTP"
  task :download do
    puts "IBGE's FTP is blocking wget usage, please download files manually."
    # puts "wget -P data/malhas --no-directories --continue --recursive -A.zip #{malhas_ftp_dir_url}"
  end


  
end

