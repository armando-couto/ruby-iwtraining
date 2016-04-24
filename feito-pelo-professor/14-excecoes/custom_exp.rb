class CarroError < RuntimeError
  attr_accessor :current_username
  def initialize(current_username)
    @current_username = current_username
  end
end

class Carro
  def ligar(aceleracao, velocidade)
    raise CarroError.new('teste@teste.com'), "velocidade está faltando!" if velocidade.nil?
    raise CarroError.new('teste@teste.com'), "velocidade precisa ser um numero!" if velocidade.is_a? Numeric

    puts "ligando com a = #{aceleracao} e v = #{velocidade}"
  end
end

begin
  carro = Carro.new
  carro.ligar(20, 10)
  carro.ligar(20, "????")
rescue CarroError => error
  STDERR.puts "Ocorreu um erro especifico do Carro: #{error} para o usuario #{error.current_username}"
end
