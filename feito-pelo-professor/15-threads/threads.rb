threads = [1, 5, 10].map do |num|
  Thread.new(num) do |segundos|
    puts "Iniciando sleep de #{segundos}s"
    sleep segundos
    puts "Terminado sleep de #{segundos}s"
  end
end

threads.each { |t| t.join }

