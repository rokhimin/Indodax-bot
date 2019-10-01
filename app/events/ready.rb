module Bot
    module DiscordEvents
        module Ready
            extend Discordrb::EventContainer
            ready do |event|
                event.bot.game = configatron.game
            end
            puts 'Bot succesfully launched!'
            puts 'Bot Indodax running......'
        end
    end
end