require_relative 'debug'
require_relative 'authentication'

class Carro

  include Debug
  include Authentication
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

end