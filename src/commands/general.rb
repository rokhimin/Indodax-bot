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
                    embed.add_field name: "Website :", value: "https://github.com/rokhimin/discordbot-ruby-indodax"
                end
            end

            #ping command
            command(:ping) do |event|
                event.respond "Time taken : #{ Time.now - event.timestamp } seconds."
            end

            #initiate API (48 coin ,update 29/7/2019) (to idr)
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
            api_xem = "#{indodax}xdce#{ticker}"
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

            #btg command
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
                url = api_eth
                uri = URI(url)
                response = Net::HTTP.get(uri)
                eth = JSON.parse(response)
                event.respond "Harga 1 Ethereum(ETH) = Rp #{ title = eth["ticker"]["last"] }"
            end

            #eos command
            command(:eos) do |event|
                url = api_eos
                uri = URI(url)
                response = Net::HTTP.get(uri)
                eos = JSON.parse(response)
                event.respond "Harga 1 Eos(EOS) = Rp #{ title = eos["ticker"]["last"] }"
            end

            #etc command
            command(:etc) do |event|
                url = api_etc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                etc = JSON.parse(response)
                event.respond "Harga 1 Ethereum Classic(ETC) = Rp #{ title = etc["ticker"]["last"] }"
            end

            #gard command
            command(:gard) do |event|
                url = api_gard
                uri = URI(url)
                response = Net::HTTP.get(uri)
                gard = JSON.parse(response)
                event.respond "Harga 1 Hashgard(GARD) = Rp #{ title = gard["ticker"]["last"] }"
            end

            #gsc command
            command(:gsc) do |event|
                url = api_gsc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                gsc = JSON.parse(response)
                event.respond "Harga 1 Global Social Chain(GSC) = Rp #{ title = gsc["ticker"]["last"] }"
            end

            #gxc command
            command(:gxc) do |event|
                url = api_gxc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                gxc = JSON.parse(response)
                event.respond "Harga 1 GXchain(GXC) = Rp #{ title = gxc["ticker"]["last"] }"
            end

            #hpb command
            command(:hpb) do |event|
                url = api_hpb
                uri = URI(url)
                response = Net::HTTP.get(uri)
                hpb = JSON.parse(response)
                event.respond "Harga 1 High Performance Blockchain(HPB) = Rp #{ title = hpb["ticker"]["last"] }"
            end

            #ignis command
            command(:ignis) do |event|
                url = api_ignis
                uri = URI(url)
                response = Net::HTTP.get(uri)
                ignis = JSON.parse(response)
                event.respond "Harga 1 Ignis(IGNIS) = Rp #{ title = ignis["ticker"]["last"] }"
            end

            #inx command
            command(:inx) do |event|
                url = api_inx
                uri = URI(url)
                response = Net::HTTP.get(uri)
                inx = JSON.parse(response)
                event.respond "Harga 1 INMax(INX) = Rp #{ title = inx["ticker"]["last"] }"
            end

            #ltc command
            command(:ltc) do |event|
                url = api_ltc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                ltc = JSON.parse(response)
                event.respond "Harga 1 LiteCoin(LTC) = Rp #{ title = ltc["ticker"]["last"] }"
            end

            #neo command
            command(:neo) do |event|
                url = api_neo
                uri = URI(url)
                response = Net::HTTP.get(uri)
                neo = JSON.parse(response)
                event.respond "Harga 1 Neo(NEO) = Rp #{ title = neo["ticker"]["last"] }"
            end

            #npxs command
            command(:npxs) do |event|
                url = api_npxs
                uri = URI(url)
                response = Net::HTTP.get(uri)
                npxs = JSON.parse(response)
                event.respond "Harga 1 Pundi X(NPXS) = Rp #{ title = npxs["ticker"]["last"] }"
            end

            #nxt command
            command(:nxt) do |event|
                url = api_nxt
                uri = URI(url)
                response = Net::HTTP.get(uri)
                nxt = JSON.parse(response)
                event.respond "Harga 1 Nxt(NXT) = Rp #{ title = nxt["ticker"]["last"] }"
            end

            #qnt command
            command(:qnt) do |event|
                url = api_qnt
                uri = URI(url)
                response = Net::HTTP.get(uri)
                qnt = JSON.parse(response)
                event.respond "Harga 1 Ontology(QNT) = Rp #{ title = qnt["ticker"]["last"] }"
            end

            #pxg command
            command(:pxg) do |event|
                url = api_pxg
                uri = URI(url)
                response = Net::HTTP.get(uri)
                pxg = JSON.parse(response)
                event.respond "Harga 1 PlayGame(PXG) = Rp #{ title = pxg["ticker"]["last"] }"
            end

            #qtum command
            command(:qtum) do |event|
                url = api_qtum
                uri = URI(url)
                response = Net::HTTP.get(uri)
                qtum = JSON.parse(response)
                event.respond "Harga 1 Qtum(QTUM) = Rp #{ title = qtum["ticker"]["last"] }"
            end

            #rvn command
            command(:rvn) do |event|
                url = api_rvn
                uri = URI(url)
                response = Net::HTTP.get(uri)
                rvn = JSON.parse(response)
                event.respond "Harga 1 RavenCoin(RVN) = Rp #{ title = rvn["ticker"]["last"] }"
            end

            #scc command
            command(:scc) do |event|
                url = api_scc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                scc = JSON.parse(response)
                event.respond "Harga 1 SiaCashCoin(SCC) = Rp #{ title = scc["ticker"]["last"] }"
            end

            #ssp command
            command(:ssp) do |event|
                url = api_ssp
                uri = URI(url)
                response = Net::HTTP.get(uri)
                ssp = JSON.parse(response)
                event.respond "Harga 1 Smartshare(SSP) = Rp #{ title = ssp["ticker"]["last"] }"
            end

            #stq command
            command(:stq) do |event|
                url = api_stq
                uri = URI(url)
                response = Net::HTTP.get(uri)
                stq = JSON.parse(response)
                event.respond "Harga 1 Storiqa(STQ) = Rp #{ title = stq["ticker"]["last"] }"
            end

            #sum command
            command(:sum) do |event|
                url = api_sum
                uri = URI(url)
                response = Net::HTTP.get(uri)
                sum = JSON.parse(response)
                event.respond "Harga 1 Sumokoin(SUM) = Rp #{ title = sum["ticker"]["last"] }"
            end

            #trx command
            command(:trx) do |event|
                url = api_trx
                uri = URI(url)
                response = Net::HTTP.get(uri)
                trx = JSON.parse(response)
                event.respond "Harga 1 Tron(TRX) = Rp #{ title = trx["ticker"]["last"] }"
            end

            #usdc command
            command(:usdc) do |event|
                url = api_usdc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                usdc = JSON.parse(response)
                event.respond "Harga 1 USD Coin(USDC) = Rp #{ title = usdc["ticker"]["last"] }"
            end

            #usdt command
            command(:usdt) do |event|
                url = api_usdt
                uri = URI(url)
                response = Net::HTTP.get(uri)
                usdt = JSON.parse(response)
                event.respond "Harga 1 USD Tether(USDT) = Rp #{ title = usdt["ticker"]["last"] }"
            end

            #vex command
            command(:vex) do |event|
                url = api_vex
                uri = URI(url)
                response = Net::HTTP.get(uri)
                vex = JSON.parse(response)
                event.respond "Harga 1 Vexanium(VEX) = Rp #{ title = vex["ticker"]["last"] }"
            end

            #waves command
            command(:waves) do |event|
                url = api_waves
                uri = URI(url)
                response = Net::HTTP.get(uri)
                waves = JSON.parse(response)
                event.respond "Harga 1 Waves(WAVES) = Rp #{ title = waves["ticker"]["last"] }"
            end

            #xlm command
            command(:xlm) do |event|
                url = api_xlm
                uri = URI(url)
                response = Net::HTTP.get(uri)
                xlm = JSON.parse(response)
                event.respond "Harga 1 Stellar Lumens(XLM) = Rp #{ title = xlm["ticker"]["last"] }"
            end

            #xem command
            command(:xem) do |event|
                url = api_xem
                uri = URI(url)
                response = Net::HTTP.get(uri)
                xem = JSON.parse(response)
                event.respond "Harga 1 Nem(XEM) = Rp #{ title = xem["ticker"]["last"] }"
            end

            #xdce command
            command(:xdce) do |event|
                url = api_xdce
                uri = URI(url)
                response = Net::HTTP.get(uri)
                xdce = JSON.parse(response)
                event.respond "Harga 1 XinFin Network(XDCE) = Rp #{ title = xdce["ticker"]["last"] }"
            end

            #xrp command
            command(:xrp) do |event|
                url = api_xrp
                uri = URI(url)
                response = Net::HTTP.get(uri)
                xrp = JSON.parse(response)
                event.respond "Harga 1 Ripple(XRP) = Rp #{ title = xrp["ticker"]["last"] }"
            end

            #xzc command
            command(:xzc) do |event|
                url = api_xzc
                uri = URI(url)
                response = Net::HTTP.get(uri)
                xzc = JSON.parse(response)
                event.respond "Harga 1 ZCoin(XZC) = Rp #{ title = xzc["ticker"]["last"] }"
            end

        end
    end
end
