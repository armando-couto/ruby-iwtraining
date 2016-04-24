class Carro

  include Comparable

  attr_accessor :cor, :modelo, :ano

  def initialize(modelo, cor, ano)
    @modelo = modelo
    @cor = cor
    @ano = ano
  end

  def <=>(other)
    self.ano <=> other.ano
  end

  def to_s
    @modelo
  end

  def ligacao_direta
    raise "Esse carro não pode fazer ligação direta!"
  end

end