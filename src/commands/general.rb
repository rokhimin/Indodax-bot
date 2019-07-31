module Bot
    module DiscordCommands
        module General
            extend Discordrb::Commands::CommandContainer

            #help command
            command(:help) do |event|
                servers = event.bot.servers 
                event.channel.send_embed do |embed| 
                embed.colour = 0xff8040 
                embed.add_field name: ".", value: "`[help]` `[about]` `[ping]`" 
                embed.add_field name: "__**INDODAX**__", value: "`[btc]` `[ten]` `[abyss]` `[act]` `[ada]` `[aoa]` `[bcd]` `[bch]` `[bsv]` `[bnb]` `[btg]` `[bts]` `[btt]` `[cro]` `[dash]` `[dax]` `[doge]` `[eth]` `[eos]` `[etc]` `[gard]` `[gsc]` `[gxc]` `[hpb]` `[ignis]` `[inx]` `[ltc]` `[neo]` `[npxs]` `[nxt]` `[ont]` `[pxg]` `[qtum]` `[rvn]` `[scc]` `[ssp]` `[stq]` `[sumo]` `[trx]` `[usdc]` `[usdt]` `[vex]` `[waves]` `[xlm]` `[xem]` `[xdce]` `[xrp]` `[xze]`" 
                end
            end

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
                    embed.add_field name: "Website :", value: "https://github.com/rokhimin/discordbot-ruby-indodax"
                end
            end

            #ping command
            command(:ping) do |event|
                event.respond "Time taken : #{ Time.now - event.timestamp } seconds."
            end
            
            #indodax command
            command(:indodax, description: 'check crypto coins.', min_args: 1,
                   usage: 'indodax <query>') do |event, *query|
                indodax = query.join(' ')
                url = "https://indodax.com/api/#{indodax}_idr/ticker"
                uri = URI(url)
                response = Net::HTTP.get(uri)
                btc = JSON.parse(response)
                servers = event.bot.servers 
                event.channel.send_embed do |embed| 
                embed.colour = 0xff8040
                embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: ">market indodax")
                embed.add_field name: "Last price #{indodax.upcase}", value: "Rp #{ title = btc["ticker"]["last"] }"
                embed.add_field name: "High", value: "Rp #{ title = btc["ticker"]["high"] }", inline: true
                embed.add_field name: "Low", value: "Rp #{ title = btc["ticker"]["low"] }", inline: true
                embed.add_field name: "Volume #{indodax.upcase} ", value: "Rp #{ title = btc["ticker"]["vol_#{indodax}"] }"
                embed.add_field name: "Volume IDR", value: "Rp #{ title = btc["ticker"]["vol_idr"] }", inline: true
                end
            end


        end
    end
end
