
fork do
  puts "processo filho: #$$. meu pai é o #{Process.ppid}"
  exit 99
end


pid = Process.wait
puts "Filho (pid #{pid}) terminou com código de retorno #{$?.exitstatus}"

puts "processo pai: #$$"