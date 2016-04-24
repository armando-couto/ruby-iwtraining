require 'Geocoder'

# Instalado por:
# $ gem install geocoder
#
# ou colocando no arquivo Gemfile
# e rodando o comando:
# $ bundle install

puts Geocoder.address "Av Tiburcio Cavalcante"
puts Geocoder.coordinates "Av Tiburcio Cavalcante"

require 'minhagem'

class MinhaClass
  include Minhagem
end

MinhaClass.new.hello_from_gem