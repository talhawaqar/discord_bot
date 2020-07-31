require_relative '../lib/api_request.rb'

describe ApiRequest do
  let(:dummy_class) { Class.new { extend ApiRequest } }

  it 'it gives json response' do
    url = 'https://joke3.p.rapidapi.com/v1/joke'
    rapid_api_host = 'joke3.p.rapidapi.com'
    rapid_api_key = '2bd443afe8msh2c2b9d66301bb30p10f3edjsndf465046718b'
    expect(dummy_class.json_response(url, rapid_api_host, rapid_api_key)).to_json
  end
end
