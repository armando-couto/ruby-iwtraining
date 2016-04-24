class ExemploParametro
  def passando_o_bloco(param, &bloco)
    @bloco = bloco
  end

  def chamando_o_bloco(param)
    @bloco.call(param)
  end
end

ex = ExemploParametro.new
ex.passando_o_bloco(1) { |param| puts "Valor: #{param}" }
ex.chamando_o_bloco(1_000_000)


bloco = lambda { |param| puts "Valor: #{param}" }
puts bloco.call("hello!")

bloco = -> param { puts "Valor: #{param}" }
puts bloco.call("hello!")