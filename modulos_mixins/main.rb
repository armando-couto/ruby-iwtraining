
require_relative 'carro'

carro = Carro.new("207", "branco", 2013)
carro2 = Carro.new("407", "preto", 2011)
carro.who_am_i?

puts carro.is_valid? "123"

puts "#{carro} > #{carro2}" if carro > carro2
puts "#{carro} < #{carro2}" if carro < carro2
puts "#{carro} = #{carro2}" if carro == carro2

puts [carro, carro2].sort.each_with_index { |c, i| puts "[#{i}], #{c}" }