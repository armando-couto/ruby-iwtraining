[1, 2, 3].each { |num| puts num }

puts "---------"

novo_array = [1, 2, 3]
                 .map { |num| num * 2 }
                 .map { |num| "Número: #{num}" }

puts novo_array
puts "---------"

nova_string = [1, 2, 3]
                  .map { |num| num * 2 }
                  .map { |num| "Número: #{num}" }
                  .join(",")

puts nova_string
puts "---------"

class Array
  def mapp()
    out = []
    if block_given?
      self.each { |e| out << yield(e) }
    else
      out = to_enum :mapp
    end
    out
  end
end


novo_array1 = [1, 2, 3, 4].mapp { |i| "teste: #{i}"}

puts novo_array1
puts "---------"

def map(array)
  if block_given?
    new_array = []

    array.each do |elem|
      new_elem = yield elem
      new_array << new_elem
    end

    new_array
  else
    array
  end
end

novo_array2 = map([1, 2, 3]) { |e|  e * 10}
puts novo_array2