"hello".instance_eval do
  puts "upcase #{upcase}"
end


"hello".instance_eval 'puts "upcase #{upcase}"'


class MyClass
end

MyClass.class_eval do
  def instance_method
    puts "sou um metodo de instancia normal, como todos"
  end
end

obj = MyClass.new
obj.instance_method