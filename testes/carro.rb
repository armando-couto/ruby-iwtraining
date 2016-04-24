
class Carro

  include Comparable

  attr_accessor :modelo, :cor, :ano

  def initialize(modelo, cor, ano)
    @modelo = modelo
    @cor = cor
    @ano = ano
  end

  def <=> (other)
    self.ano <=> other.ano
  end

  def to_s
    @modelo
  end
end