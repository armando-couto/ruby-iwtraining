nome = "mateus"
# outro_nome = nome
outro_nome = nome.dup

puts "nome #{nome.object_id}"
puts "outro_nome #{outro_nome.object_id}"

puts "nome #{nome}"
puts "outro_nome #{outro_nome}"

nome[5] = "z"

puts "nome #{nome}"
puts "outro_nome #{outro_nome}"

outro_nome.freeze
outro_nome[5] = "z" unless outro_nome.frozen?


