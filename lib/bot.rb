require 'discordrb'
require_relative './joke.rb'
require_relative './quote.rb'
require 'dotenv'

class Bot
  attr_reader :bot

  def initialize
    env = Dotenv.load
    @token = env['TOKEN']
    @bot = Discordrb::Bot.new token: @token, client_id: env['CLIENT_ID']
  end

  def start_bot
    @bot.message(with_text: 'Hi') do |event|
      event.respond "Hi #{event.user.name} Welcome to the world of bengal \n "
    end

    @bot.message(with_text: 'joke') do |event|
      joke = Joke.new
      joke = joke.random_joke
      event.respond joke
    end

    @bot.message(with_text: 'quote') do |event|
      quote = Quote.new
      quote = quote.random_quote
      event.respond "Quote is \"#{quote[:content]}\" \n Author: #{quote[:author]}"
    end

    @bot.run
  end
end
