class Carro
  def ligar
    puts "Liguei o carro"
  end

  def gostaria_de_vender
    vender
  end

  protected

  def testar
    puts "Testei o carro"
  end

  private

  def vender
    puts "Vendi o carro"
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


meu_carro = MeuCarro.new
meu_carro.testar_super