module Bot
    module DiscordGeneralCommands
        module Help
            extend Discordrb::Commands::CommandContainer

            #help command
            command(:help) do |event|
                servers = event.bot.servers
                event.channel.send_embed do |embed|
                embed.colour = 0xff8040
                embed.add_field name: "__**GENERAL**__", value: "`>help` `>about` `>ping`"
                embed.add_field name: "__**INDODAX**__", value: "`>indodax <name coins>` btc, eth, xlm, ten..."
                end
            end

        end
    end
end
