
require 'minitest/autorun'
require_relative '../carro'

class CarroTest < Minitest::Test

  def setup
    @carro = Carro.new("onix", "branco", 2014)
  end

  def test_modelo
    assert_equal @carro.modelo, "onix"
  end
end