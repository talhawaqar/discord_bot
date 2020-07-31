require_relative '../lib/quote.rb'

describe Quote do
  let(:quote) { Quote.new }

  it 'Check returned qoute and author data type of string' do
    q = quote.random_quote
    expect(q[:content].class).to eq(String)
    expect(q[:author].class).to eq(String)
  end
end
