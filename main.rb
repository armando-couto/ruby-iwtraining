

require_relative 'leitor-csv/leitor_csv'

if ARGV.size == 0
  puts "não mandou o arquivo."
  exit 1
end

leitor_de_carros = LeitorCsv.new
leitor_de_carros.ler_carro_do_arquivo ARGV.first
leitor_de_carros.each_carro { |carro1| puts carro1 }