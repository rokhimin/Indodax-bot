module Bot
    module DiscordEvents
        module Heartbeat
            extend Discordrb::EventContainer
            heartbeat do |_event|
                puts "Heartbeat at #{Time.now}"
            end
        end
    end
end