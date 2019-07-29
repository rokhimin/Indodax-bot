module Bot
    module DiscordEvents
        module Mention
            extend Discordrb::EventContainer
            mention do |event|
                event.respond "**my prefix is `#{configatron.prefix}`**"
            end
        end
    end
end