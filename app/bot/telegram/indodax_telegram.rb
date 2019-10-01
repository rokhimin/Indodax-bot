
class Indodax

    def self.works
            Telegram::Bot::Client.run(TOKEN) do |bot|
            bot.listen do |message|
                indodax = message.text.sub('/price ', '')
                case message.text
                when '/about'
                    bot.api.send_message(chat_id: message.chat.id, text: "Dev : twitter.com/rokhiminwahid | twitter.com/whdzera \nWritten : Ruby Language")
                when '/help'
                    bot.api.send_message(chat_id: message.chat.id, text: "/about | about this bot \n/price | <name coins>` btc, eth, xlm, ten...")
                when '/price'
                    bot.api.send_message(chat_id: message.chat.id, text: "/price <name coins>` btc, eth, xlm, ten...")
                when '/price ' + indodax
                url = "https://indodax.com/api/#{indodax}_idr/ticker"
                uri = URI(url)
                response = Net::HTTP.get(uri)
                api_indodax = JSON.parse(response)
                    bot.api.send_message(chat_id: message.chat.id, text: " __#{indodax.upcase}__\nLast price: Rp #{ title = api_indodax["ticker"]["last"] }\nHigh: Rp #{ title = api_indodax["ticker"]["high"] }\nLow: Rp #{ title = api_indodax["ticker"]["low"] }\nVolume #{indodax}: Rp #{ title = api_indodax["ticker"]["vol_#{indodax}"] }\nVolume idr: Rp #{ title = api_indodax["ticker"]["vol_idr"] }")
                end
            end
            end
    end


end