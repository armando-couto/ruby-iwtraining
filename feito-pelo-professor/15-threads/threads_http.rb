require 'net/http'

def request(url)
  endpoint = Net::HTTP.new(url, 80)
  puts "Iniciando requisicao p/ #{url}"
  res = endpoint.get('/')
  puts "Resposta obtida p/ #{url}: #{res.message}"
end

%w{ www.google.com www.facebook.com www.twitter.com }
    .map { |site| Thread.new(site) { |url| request(url) } }
    .each { |thread| thread.join }
