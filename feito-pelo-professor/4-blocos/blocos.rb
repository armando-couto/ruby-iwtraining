
def n_vezes(n)
  puts "inicio"

  if block_given?
    n.times { yield }
  else
    puts "sem bloco para nós..."
  end
  puts "fim"
end

# n_vezes(5) { puts "hello!" }

n_vezes(5)
