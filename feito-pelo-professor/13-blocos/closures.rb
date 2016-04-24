def multiplicador_com_memoria(multiplicador)
  -> num { multiplicador * num }
  end


mul = multiplicador_com_memoria(10)
puts mul.call(1) # => 10
puts mul.call(2) # => 20

mul100 = multiplicador_com_memoria(100)
puts mul100.call(1) # => 100
puts mul100.call(2) # => 200


def multiplicador_incremental(multiplicador)
  i = 0
  -> num do
    i += 1
    multiplicador * num + i
  end
end


mul_inc = multiplicador_incremental(10)
puts mul_inc.call(1) # => 11
puts mul_inc.call(2) # => 22
puts mul_inc.call(3) # => 33
puts mul_inc.call(3) # => 34