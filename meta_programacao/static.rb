
class Test

  def self.meu_metodo_estatico(param)
    puts param
  end
end

Test.meu_metodo_estatico "hello!"

class OutroTeste
  puts "self= #{self}"
  puts "Class= #{self.class}"
end

str = "minha string"

def str.hello
  puts "hello #{self}"
end

str.hello

# Singleton
singleton = class << str
  def outro_hello
    puts "outro hello!"
  end
end

puts singleton
str.outro_hello