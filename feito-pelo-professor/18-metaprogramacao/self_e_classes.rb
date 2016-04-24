class Test

  def self.meu_metodo_estatico(param)
    puts param
  end

end


Test.meu_metodo_estatico "hello!"


class OutroTeste
  puts "self = #{self}"
  puts "Class = #{self.class}"

  def self.meu_metodo
    puts "nem precisa instanciar"
  end
end

OutroTeste.meu_metodo


str = "minha string"

def str.hello
  puts "hello #{self}"
end

str.hello


class << str
  def outro_hello
    puts "outro hello!!!!"
  end
end

str.outro_hello
# "string nova".outro_hello # => NoMethodError




singleton = class << str
  def mais_um_hello
    puts "mais_um_hello!!!!"
  end
  self
end

puts singleton


# Self e Módulos

class MinhaClasse
  include Comparable
end

class MinhaOutraClasse
  include Comparable
end

# MinhaClasse - Object
# MinhaClasse class: Class
# include!
# MinhaClass  - Class Anon - Object
#                   |
#          Comparable.methods
#                       |
# MinhaOutraClass - Class Anon - Object

