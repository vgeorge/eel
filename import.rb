require 'zip/zip'
require 'sqlite3'

db_filename = "cnefe.sqlite"
cnefe_files_dir = "C:/code/cnefe/"

# delete old db, if exists
if File.exist?(db_filename) then
    File.delete(db_filename)
end

# open database
db = SQLite3::Database.new( db_filename )

# create table if they don't exist
sql_schema = File.open("schema.sql", "rb") {|io| io.read}
db.execute_batch(sql_schema)

# variable that keeps previous line to avoid repeating queries
last_line = ""
 
Dir.glob(cnefe_files_dir + '*.zip') do |filename|
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
        db.execute( "insert or ignore into logradouros (uf_id, municipio_id, distrito_id, subdistrito_id, setor_id, situacao_setor, tipo, titulo, nome) values (?,?,?,?,?,?,?,?,?)", uf_id, municipio_id, distrito_id, subdistrito_id, setor_id, situacao_setor, tipo, titulo, nome)
        logradouro_id = db.last_insert_row_id
      end
	  
	  db.execute( "insert or ignore into enderecos (logradouro_id, numero, modificador_numero, complemento1, complemento1_valor, complemento2, complemento2_valor, complemento3, complemento3_valor, complemento4, complemento4_valor, complemento5, complemento5_valor, complemento6, complemento6_valor, latitude, longitude, localidade, nulo, especie, identificacao, multiplicidade, domicilio_coletivo, quadra, face, cep) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", logradouro_id, numero, modificador_numero, complemento1, complemento1_valor, complemento2, complemento2_valor, complemento3, complemento3_valor, complemento4, complemento4_valor, complemento5, complemento5_valor, complemento6, complemento6_valor, latitude, longitude, localidade, nulo, especie, identificacao, multiplicidade, domicilio_coletivo, quadra, face, cep)
	  

   
      # keep this line to avoid repeating queries
      last_line = line[0..125]
    end    
  end
end

