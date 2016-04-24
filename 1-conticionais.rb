
today = Time.now

if today.saturday? or today.sunday?
  puts "dia de estudar"
else
  puts "dia de trabalho"
end

retorno_do_if = if today.saturday? or today.sunday?
                  puts "dia de estudar"
                else
                  puts "dia de trabalho"
                end

puts retorno_do_if