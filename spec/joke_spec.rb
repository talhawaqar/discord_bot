require_relative '../lib/joke.rb'

describe Joke do
  let(:joke) { Joke.new }

  it 'Check returned joke data type of string' do
    expect(joke.random_joke.class).to eq(String)
  end
end
