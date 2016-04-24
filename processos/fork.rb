
fork do
  puts "processo filho #$$. meu pai é o #{Process.ppid}"
  exit 99
end

puts "processo pai #$$"

pid = Process.wait
puts "Filho (pid #{pid}) terminou com o código de retorno #{$?.exitstatus}"

puts "processo pai: #$$"