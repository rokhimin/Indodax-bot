module Bot
    module DiscordEvents
        module Mention
            extend Discordrb::EventContainer
            mention do |event|
                event.respond "**`#{configatron.prefix}help` for commands**"
            end
        end
    end
end