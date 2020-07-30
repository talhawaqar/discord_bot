require 'discordrb'

class Bot
  def initialize
    @token = 'NzM4MTMyMzA4MDkxMDc2Njk5.XyHdSA.ooOcccTasrwxufGjVET1RydvXc8'
    @bot = Discordrb::Bot.new token: @token, client_id: '738132308091076699'
  end

  def start_bot
    @bot.message(with_text: 'Ping!') do |event|
      event.respond 'Pong!'
    end
    @bot.run
  end
end
