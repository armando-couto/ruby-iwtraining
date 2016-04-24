class Carro

  def ligar
    puts "liguei o carro"
  end

  def gostaria_de_vender
    vender
  end

  protected

  def testar
    puts "testei o carro"
  end

  private

  def vender
    puts "vendi o carro"
  end

end

class MeuCarro < Carro

  def testar_super
    testar
  end

end


carro = Carro.new
carro.ligar
carro.gostaria_de_vender
# carro.testar

meu_carro = MeuCarro.new
meu_carro.testar_super