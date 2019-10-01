module Bot
    module DiscordGeneralCommands
        module About
            extend Discordrb::Commands::CommandContainer

            #about command
            command(:about) do |event|
                servers = event.bot.servers
                event.channel.send_embed do |embed|
                    embed.colour = 0xff8040
                    embed.title = '__**Indodax Bot**__'
                    embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: 'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png')
                    embed.add_field name: "Owner :", value: "twitter.com/rokhiminwahid | twitter.com/whdzera"
                    embed.add_field name: "Language :", value: "Ruby"
                    embed.add_field name: "Library :", value: "discordrb"
                    embed.add_field name: "source code :", value: "https://github.com/rokhimin/discordbot-ruby-indodax"
                end
            end

        end
    end
end