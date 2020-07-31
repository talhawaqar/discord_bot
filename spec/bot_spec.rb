require_relative '../lib/bot.rb'
require 'discordrb'

describe Bot do
  let(:my_bot) { Bot.new }
  it 'bot class test' do
    expect(my_bot.bot.class).to eq(Discordrb::Bot)
  end
end
