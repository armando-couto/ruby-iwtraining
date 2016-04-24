
language = "Ruby"

if language =~ /Ruby|Perl/
  puts "Excelente suporte para expressões regulares!"
end


str = "Minhas linguagens preferidas são ruby e scala"

str.sub(/scala/, 'elixir')
puts str

str.sub!(/scala/, 'elixir')
puts str


str2 = "Eu acho que javascript pode ser uma boa pois javascript roda bem"
str2.gsub!(/javascript/, 'ruby')
puts str2