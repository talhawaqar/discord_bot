require 'net/http'
require 'uri'
require 'json'

class Joke
  def random_joke
    url = URI('https://joke3.p.rapidapi.com/v1/joke')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'joke3.p.rapidapi.com'
    request['x-rapidapi-key'] = '2bd443afe8msh2c2b9d66301bb30p10f3edjsndf465046718b'

    response = http.request(request)
    response = JSON.parse(response.body)
    response['content']
  end
end
