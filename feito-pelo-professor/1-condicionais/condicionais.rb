
today = Time.now

if today.saturday? or today.sunday?
  puts "dia de estudar!"
else
  puts "dia de trabalhar"
end


atividade_do_dia = if today.saturday? or today.sunday?
  "dia de estudar!"
else
  "dia de trabalhar"
end

puts atividade_do_dia