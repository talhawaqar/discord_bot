require 'net/http'
require 'uri'
require 'json'
require_relative './api_request.rb'

class Joke
  include ApiRequest

  def random_joke
    url = 'https://joke3.p.rapidapi.com/v1/joke'
    rapid_api_host = 'joke3.p.rapidapi.com'
    rapid_api_key = '2bd443afe8msh2c2b9d66301bb30p10f3edjsndf465046718b'
    response = json_response(url, rapid_api_host, rapid_api_key)
    response['content']
  end
end
