require 'net/http'
require 'uri'
require 'json'
require_relative './api_request.rb'

class Quote
  include ApiRequest

  def random_quote
    url = 'https://quotes15.p.rapidapi.com/quotes/random/?language_code=en'
    rapid_api_host = 'quotes15.p.rapidapi.com'
    rapid_api_key = '2bd443afe8msh2c2b9d66301bb30p10f3edjsndf465046718b'

    response = json_response(url, rapid_api_host, rapid_api_key)
    { content: response['content'], author: response['originator']['name'] }
  end
end
