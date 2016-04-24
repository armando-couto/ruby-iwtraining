require_relative 'leitor_csv'

if ARGV.size == 0
  puts "faltou o nome do arquivo csv dos carros"
  exit 1
end

leitor_de_carros = LeitorCsv.new
leitor_de_carros.ler_carros_do_arquivo ARGV.first
leitor_de_carros.each_carro { |carro| puts carro }