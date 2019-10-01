module Bot
    module DiscordGeneralCommands
        module Ping
            extend Discordrb::Commands::CommandContainer

            #ping command
            command(:ping) do |event|
                servers = event.bot.servers
                event.channel.send_embed do |embed|
                embed.colour = 0xff8040
                embed.add_field name: "Time taken :", value: "#{ Time.now - event.timestamp } sec"
                end
            end

        end
    end
end