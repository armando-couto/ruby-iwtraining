require 'open-uri'

name = "google"
page = open("http://www.#{name}.com")
filename = "#{name}.txt"

file = File.open(filename, "r")

begin

  # raise StandardError, "aqui eu escolhi informar que algo nao esta certo"

  while line = page.gets
    file.puts line
  end

rescue StandardError, SyntaxError => error

  STDERR.puts "Falha especifica: #{error}"

rescue Exception

  STDERR.puts "Falha: #{$!}"
  # File.delete(filename)

ensure
  file.close
end

