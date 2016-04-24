class Carro

  attr_accessor :cor, :modelo

  def initialize(modelo, cor)
    @modelo = modelo
    @cor = cor
  end

  def descricao_completa
    "#@modelo #@cor"
  end

  def descricao_completa=(modelo_e_cor)
    @modelo, @cor = modelo_e_cor.split
  end

  def to_s
    "sou um #@modelo de cor #@cor"
  end

end

meu_carro = Carro.new('408', 'cinza')
puts meu_carro.descricao_completa
meu_carro.descricao_completa = "207 preta"

puts meu_carro

# puts meu_carro
# puts meu_carro.object_id
# puts meu_carro.to_s
# puts meu_carro.inspect
# puts meu_carro.modelo
# meu_carro.modelo = 207
# meu_carro.cor = 'preta'
# puts meu_carro