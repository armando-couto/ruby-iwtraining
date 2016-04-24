contador = 0

threads = 10.times.map do |i|
  Thread.new do
    sleep(rand(0..10))
    contador += 1
    Thread.current[:result] = contador
  end
end

threads.each do |thread|
  thread.join
  puts thread[:result]
end


