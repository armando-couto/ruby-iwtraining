class String
  def meu_to_s
    "#{object_id} #{self}"
  end
end

puts "minha string".meu_to_s

