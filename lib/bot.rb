require 'discordrb'
require_relative './joke.rb'

class Bot
  def initialize
    @token = ''
    @bot = Discordrb::Bot.new token: @token, client_id: '738132308091076699'
  end

  def start_bot
    @bot.message(with_text: 'joke') do |event|
      joke = Joke.new
      joke = joke.random_joke
      event.respond joke
    end

    @bot.message(with_text: 'Hi') do |event|
      event.respond "Hi #{event.user.name} Welcome to the world of bengal \n "
    end

    @bot.run
  end
end
