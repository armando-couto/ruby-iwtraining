
"hello".instance_eval do
  puts "upcase #{upcase}"
end

"hello".instance_eval 'puts "upcase #{upcase}"'

class MyClass
end

MyClass.class_eval do
  def instace_method
    puts "Método de instancia"
  end
end

obj = MyClass.new
obj.instace_method