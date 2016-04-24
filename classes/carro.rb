
class Carro

  attr_accessor :modelo, :cor

  def initialize(modelo, cor)
    @modelo = modelo
    @cor = cor
  end

  def to_s # pode ser #{@cor} ou #@cor
    "sou um #@modelo de cor: #{@cor}"
  end

  # def modelo
  #   @modelo
  # end
  #
  # def modelo=(modelo)
  #   @modelo = modelo
  # end
end

# meu_carro = Carro.new('onix', 'branca')
# puts meu_carro.object_id
# puts meu_carro.to_s
# puts meu_carro.inspect
#
# puts meu_carro.modelo
# puts meu_carro.modelo = "jeep"
#
# puts meu_carro.cor
# puts meu_carro.cor = "preto"
