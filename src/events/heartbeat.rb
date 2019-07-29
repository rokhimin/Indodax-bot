module Bot
    module DiscordEvents
        module Heartbeat
            extend Discordrb::EventContainer
            heartbeat do |_event|
                puts "==========="
                puts "Heartbeat at #{Time.now}"
                puts "==========="
            end
        end
    end
end