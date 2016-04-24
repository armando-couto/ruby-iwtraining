
language = "Ruby"

if language =~ /Ruby|Perl/
    puts "Suporte a experssões"
end

str = "Minhas linguagens preferidas são ruby, scala1 e scala2."

str.sub(/scala/, 'elixir')
puts str

str.sub!(/scala/, 'elixir')
puts str

str.gsub!(/scala/, 'elixir')
puts str