module Bot
    module DiscordCommands
        module General
            extend Discordrb::Commands::CommandContainer

            #help command
            command(:help) do |event|
                servers = event.bot.servers 
                event.channel.send_embed do |embed| 
                embed.colour = 0xff8040 
                embed.add_field name: "__**GENERAL**__", value: "`[help]` `[about]` `[ping]`" 
                embed.add_field name: "__CRYPTO__", value: "`[btc]` `[ten]` `[abyss]` `[act]` `[ada]` `[aoa]` `[bcd]` `[bch]` `[bsv]` `[bnb]` `[btg]` `[bts]` `[btt]` `[cro]` `[dash]` `[dax]` `[doge]` `[eth]` `[eos]` `[etc]` `[gard]` `[gsc]` `[gxc]` `[hpb]` `[ignis]` `[inx]` `[ltc]` `[neo]` `[npxs]` `[nxt]` `[ont]` `[pxg]` `[qtum]` `[rvn]` `[scc]` `[ssp]` `[stq]` `[sumo]` `[trx]` `[usdc]` `[usdt]` `[vex]` `[waves]` `[xlm]` `[xem]` `[xdce]` `[xrp]` `[xze]`" 
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
                    embed.add_field name: "Website :", value: "https://github.com/rokhimin/zendaya"
                end
            end

            #ping command
            command(:ping) do |event|
                event.respond "Time taken : #{ Time.now - event.timestamp } seconds."
            end

            #initiate API (48 coin ,update 29/7/2019) (coin to idr)
            indodax = "https://indodax.com/api/"
            ticker = "_idr/ticker"
            api_btc = "#{indodax}btc#{ticker}"
            api_ten = "#{indodax}ten#{ticker}"
            api_abyss = "#{indodax}abyss#{ticker}"
            api_act = "#{indodax}act#{ticker}"
            api_ada = "#{indodax}ada#{ticker}"
            api_aoa = "#{indodax}aoa#{ticker}"
            api_bcd = "#{indodax}bcd#{ticker}"
            api_bch = "#{indodax}bch#{ticker}"
            api_bsv = "#{indodax}bsv#{ticker}"
            api_bnb = "#{indodax}bnb#{ticker}"
            api_btg = "#{indodax}btg#{ticker}"
            api_bts = "#{indodax}bts#{ticker}"
            api_btt = "#{indodax}btt#{ticker}"
            api_cro = "#{indodax}cro#{ticker}"
            api_dash = "#{indodax}dash#{ticker}"
            api_dax = "#{indodax}dax#{ticker}"
            api_doge = "#{indodax}doge#{ticker}"
            api_eth = "#{indodax}eth#{ticker}"
            api_eos = "#{indodax}eos#{ticker}"
            api_etc = "#{indodax}etc#{ticker}"
            api_gard = "#{indodax}gard#{ticker}"
            api_gsc = "#{indodax}gsc#{ticker}"
            api_gxc = "#{indodax}gxc#{ticker}"
            api_hpb = "#{indodax}hpb#{ticker}"
            api_ignis = "#{indodax}ignis#{ticker}"
            api_inx = "#{indodax}inx#{ticker}"
            api_ltc = "#{indodax}ltc#{ticker}"
            api_neo = "#{indodax}neo#{ticker}"
            api_npxs = "#{indodax}npxs#{ticker}"
            api_nxt = "#{indodax}nxt#{ticker}"
            api_qnt = "#{indodax}qnt#{ticker}"
            api_pxg = "#{indodax}pxg#{ticker}"
            api_qtum = "#{indodax}qtum#{ticker}"
            api_rvn = "#{indodax}rvn#{ticker}"
            api_scc = "#{indodax}scc#{ticker}"
            api_ssp = "#{indodax}ssp#{ticker}"
            api_stq = "#{indodax}stq#{ticker}"
            api_sum = "#{indodax}sum#{ticker}"
            api_trx = "#{indodax}trx#{ticker}"
            api_usdc = "#{indodax}usdc#{ticker}"
            api_usdt = "#{indodax}usdt#{ticker}"
            api_vex = "#{indodax}vex#{ticker}"
            api_waves = "#{indodax}waves#{ticker}"
            api_xlm = "#{indodax}xlm#{ticker}"
            api_xem = "#{indodax}xem#{ticker}"
            api_xrp = "#{indodax}xrp#{ticker}"
            api_xzc = "#{indodax}xzc#{ticker}"

            #btc command
                command(:btc) do |event|
                url = api_btc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                btc = JSON.parse(response)
                event.respond "Harga 1 Bitcoin(BTC) = Rp #{ title = btc["ticker"]["last"] }"
            end

            #ten command
                command(:ten) do |event|
                url = api_ten
                uri = URI(url)
                response = Net::HTTP.get(uri)
                ten = JSON.parse(response)
                event.respond "Harga 1 Tokenomy(TEN) = Rp #{ title = ten["ticker"]["last"] }"
            end

            #abyss command
            command(:abyss) do |event|
                url = api_abyss
                uri = URI(url)
                response = Net::HTTP.get(uri)
                abyss = JSON.parse(response)
                event.respond "Harga 1 Abyss Token(ABYSS) = Rp #{ title = abyss["ticker"]["last"] }"
            end

            #act command
            command(:act) do |event|
                url = api_act
                uri = URI(url)
                response = Net::HTTP.get(uri)
                act = JSON.parse(response)
                event.respond "Harga 1 Achain(ACT) = Rp #{ title = act["ticker"]["last"] }"
            end

            #ada command
            command(:ada) do |event|
                url = api_ada
                uri = URI(url)
                response = Net::HTTP.get(uri)
                ada = JSON.parse(response)
                event.respond "Harga 1 Cardano(ADA) = Rp #{ title = ada["ticker"]["last"] }"
            end

            #aoa command
            command(:aoa) do |event|
                url = api_aoa
                uri = URI(url)
                response = Net::HTTP.get(uri)
                aoa = JSON.parse(response)
                event.respond "Harga 1 Aurora(AOA) = Rp #{ title = aoa["ticker"]["last"] }"
            end

            #bcd command
            command(:bcd) do |event|
                url = api_bcd
                uri = URI(url)
                response = Net::HTTP.get(uri)
                bcd = JSON.parse(response)
                event.respond "Harga 1 Bitcoin Diamond(BCD) = Rp #{ title = bcd["ticker"]["last"] }"
            end

            #bch command
            command(:bch) do |event|
                url = api_bch
                uri = URI(url)
                response = Net::HTTP.get(uri)
                bch = JSON.parse(response)
                event.respond "Harga 1 Bitcoin Cash(BCH) = Rp #{ title = bch["ticker"]["last"] }"
            end

            #bsv command
            command(:bsv) do |event|
                url = api_bsv
                uri = URI(url)
                response = Net::HTTP.get(uri)
                bsv = JSON.parse(response)
                event.respond "Harga 1 Bitcoin SV(BSV) = Rp #{ title = bsv["ticker"]["last"] }"
            end

            #bnb command
            command(:bnb) do |event|
                url = api_bnb
                uri = URI(url)
                response = Net::HTTP.get(uri)
                bnb = JSON.parse(response)
                event.respond "Harga 1 Bitcoin SV(BNB) = Rp #{ title = bnb["ticker"]["last"] }"
            end

            #bnb command
            command(:btg) do |event|
                url = api_btg
                uri = URI(url)
                response = Net::HTTP.get(uri)
                btg = JSON.parse(response)
                event.respond "Harga 1 Bitcoin Gold(BTG) = Rp #{ title = btg["ticker"]["last"] }"
            end

            #bts command
            command(:bts) do |event|
                url = api_bts
                uri = URI(url)
                response = Net::HTTP.get(uri)
                bts = JSON.parse(response)
                event.respond "Harga 1 BitShares(BTS) = Rp #{ title = bts["ticker"]["last"] }"
            end

            #btt command
            command(:btt) do |event|
                url = api_btt
                uri = URI(url)
                response = Net::HTTP.get(uri)
                btt = JSON.parse(response)
                event.respond "Harga 1 BitTorrent(BTT) = Rp #{ title = btt["ticker"]["last"] }"
            end

            #cro command
            command(:cro) do |event|
                url = api_cro
                uri = URI(url)
                response = Net::HTTP.get(uri)
                cro = JSON.parse(response)
                event.respond "Harga 1 Crypto.com Chain(BTT) = Rp #{ title = cro["ticker"]["last"] }"
            end

            #dash command
            command(:dash) do |event|
                url = api_dash
                uri = URI(url)
                response = Net::HTTP.get(uri)
                dash = JSON.parse(response)
                event.respond "Harga 1 Dash(DASH) = Rp #{ title = dash["ticker"]["last"] }"
            end

            #dax command
            command(:dax) do |event|
                url = api_dax
                uri = URI(url)
                response = Net::HTTP.get(uri)
                dax = JSON.parse(response)
                event.respond "Harga 1 DAEX(DAX) = Rp #{ title = dax["ticker"]["last"] }"
            end

            #doge command
            command(:doge) do |event|
                url = api_doge
                uri = URI(url)
                response = Net::HTTP.get(uri)
                doge = JSON.parse(response)
                event.respond "Harga 1 Doge(DOGE) = Rp #{ title = doge["ticker"]["last"] }"
            end

            #eth command
            command(:eth) do |event|
                url = api_doge
                uri = URI(url)
                response = Net::HTTP.get(uri)
                eth = JSON.parse(response)
                event.respond "Harga 1 Ethereum(ETH) = Rp #{ title = eth["ticker"]["last"] }"
            end

            #eos command
            command(:eos) do |event|
                url = api_doge
                uri = URI(url)
                response = Net::HTTP.get(uri)
                eos = JSON.parse(response)
                event.respond "Harga 1 Eos(EOS) = Rp #{ title = eos["ticker"]["last"] }"
            end

            #etc command
            command(:etc) do |event|
                url = api_doge
                uri = URI(url)
                response = Net::HTTP.get(uri)
                etc = JSON.parse(response)
                event.respond "Harga 1 Ethereum Classic(ETC) = Rp #{ title = etc["ticker"]["last"] }"
            end

            #gard command
            command(:gard) do |event|
                url = api_doge
                uri = URI(url)
                response = Net::HTTP.get(uri)
                gard = JSON.parse(response)
                event.respond "Harga 1 Hashgard(GARD) = Rp #{ title = gard["ticker"]["last"] }"
            end

        end
    end
end
