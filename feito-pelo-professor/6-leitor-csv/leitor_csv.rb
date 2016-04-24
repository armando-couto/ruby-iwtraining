require 'csv'
require_relative 'carro'

class LeitorCsv

  def initialize
    @carros = []
  end

  def ler_carros_do_arquivo(nome_do_arquivo)
    CSV.foreach(nome_do_arquivo, headers: true) do |row|
      @carros << Carro.new(row['modelo'], row['cor'])
    end
  end

  def each_carro
    if block_given?
      @carros.each { |carro| yield carro }
    end
  end

end
