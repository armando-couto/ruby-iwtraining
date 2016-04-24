

pipe = IO.popen("-", "w+")


if pipe
  # Aqui é o processo pai
  pipe.puts "Hello do processo pai"
  STDERR.puts "Sou o pai e recebi a mensagem do filho: #{pipe.gets.chomp}"
else
  # Aqui é o processo filho
  STDERR.puts "meu pai falou #{gets.chomp}"
  puts "Sou o Filho!"
end