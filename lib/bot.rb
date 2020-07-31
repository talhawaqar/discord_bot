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
      event.respond find_joke
    end

    @bot.message(with_text: 'quote') do |event|
      quote = find_quote
      event.respond "Quote is \"#{quote[:content]}\" \n Author: #{quote[:author]}"
    end

    @bot.run
  end

  private

  def find_joke
    joke = Joke.new
    joke.random_joke
  end

  def find_quote
    quote = Quote.new
    quote.random_quote
  end
end
