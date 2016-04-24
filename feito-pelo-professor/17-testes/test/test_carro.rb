require 'minitest/autorun'
require_relative '../carro'

class CarroTest < Minitest::Test

  def setup
    @carro1 = Carro.new("408", "cinza", 2013)
    @carro2 = Carro.new("207", "preta", 2010)
  end

  def test_modelo
    assert_equal @carro1.modelo, "408"
  end

  def test_cor
    assert_equal @carro1.cor, "cinza"
  end

  def test_comparacao_por_ano
    assert_equal @carro1 > @carro2, true
  end

  def test_ligacao_direta_do_carro_nao_deve_funcionar
    assert_raises(RuntimeError) { @carro1.ligacao_direta }
  end

end
