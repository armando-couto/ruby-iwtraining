require_relative 'veiculo'
require_relative 'carro'

puts Carro.superclass
puts Veiculo.superclass

Carro.new.andar
veiculo = Veiculo.new
veiculo.andar