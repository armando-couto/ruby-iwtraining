
# [1, 2, 3].each { |num| puts num }


novo_array = [1, 2, 3]
                 .map { |num| num * 2 }
                 .map { |num| "Número: #{num}" }
                 .join(", ")

puts novo_array


def map(array)
  if block_given?
    new_array = []
    array.each { |elem| new_array << yield(elem) }
    new_array
  else
    array
  end
end

novo_array2 = map([1, 2, 3]) { |e| e * 10 }
puts novo_array2
