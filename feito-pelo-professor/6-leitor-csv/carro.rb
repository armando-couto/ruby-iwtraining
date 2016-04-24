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
