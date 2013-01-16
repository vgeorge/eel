require 'zip/zip'
require 'sqlite3'

db_filename = "cnefe.sqlite"
cnefe_files_dir = "cnefe_files/"

# delete old db, if exists
File.delete(db_filename)

# open database
db = SQLite3::Database.new( db_filename )

# create table if they don't exist
sql_schema = File.open("schema.sql", "rb") {|io| io.read}
db.execute_batch(sql_schema)

# variable that keeps previous line to avoid repeating queries
last_line = ""
 
Dir.glob(cnefe_files_dir + '1200013*.zip') do |filename|
  puts filename + " ... "

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
      numero              = line[126..133]
      modificador_numero  = line[134..140]
      complemento1        = line[141..160]
      complemento1_valor  = line[161..170]
      complemento2        = line[171..190]
      complemento2_valor  = line[191..200]
      complemento3        = line[201..220]
      complemento3_valor  = line[221..230]
      complemento4        = line[231..250]
      complemento4_valor  = line[251..260]
      complemento5        = line[261..280]
      complemento5_valor  = line[281..290]
      complemento6        = line[291..310]
      complemento6_valor  = line[311..320]
      latitude            = line[321..335]
      longitude           = line[336..350]
      localidade          = line[351..410]
      nulo                = line[411..470]
      especie             = line[471..472]
      identificacao       = line[473..512]
      multiplicidade      = line[513..513]
      domicilio_coletivo  = line[514..543]
      quadra              = line[544..546]
      face                = line[547..549]
      cep                 = line[550..558]
      
      # if line is diferent from previous, insert new logradouro
      if last_line != line[0..125] then
        db.execute( "insert or ignore into logradouros (uf_id, municipio_id, distrito_id, tipo, titulo, nome) values (?,?,?,?,?,?)", uf_id.to_s, municipio_id, distrito_id, tipo, titulo, nome)
        logradouro_id = db.last_insert_row_id
      end

   
      # keep this line to avoid repeating queries
      last_line = line[0..125]
    end    
  end
end

