module ApiRequest
  def json_response(url, rapid_api_host, rapid_api_key)
    url = URI(url)

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = rapid_api_host
    request['x-rapidapi-key'] = rapid_api_key

    response = http.request(request)
    response = JSON.parse(response.body)
    response
  end
end
