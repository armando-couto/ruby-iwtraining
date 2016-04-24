require_relative 'carro'

carro408 = Carro.new("408", "cinza", 2013)
carro207 = Carro.new("207", "preta", 2011)

carro408.who_am_i?
puts carro408.is_valid? "123"

puts "#{carro408} < #{carro207}" if carro408 < carro207
puts "#{carro408} > #{carro207}" if carro408 > carro207
puts "#{carro408} = #{carro207}" if carro408 == carro207


[ carro408, carro207 ].sort.each_with_index { |c, i| puts "[#{i}, #{c}" }