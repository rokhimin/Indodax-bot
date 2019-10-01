
class Indodax

    def self.works
            Telegram::Bot::Client.run(TOKEN) do |bot|
            bot.listen do |message|
                from = message.text.sub('/price', '')
                checker = message.text.sub('/price', 'CHECKER_PRICE')
                matcher = /CHECKER_PRICE/.match(checker)
                case message.text
                when '/about'
                    bot.api.send_message(chat_id: message.chat.id, text: "Dev : twitter.com/rokhiminwahid | twitter.com/whdzera \nWritten : Ruby Language")
                when '/help'
                    bot.api.send_message(chat_id: message.chat.id, text: "/about | about this bot \n/price | /price <name coins>` btc, eth, xlm, ten...")
                when '/price'
                    bot.api.send_message(chat_id: message.chat.id, text: "/price <name coins>` btc, eth, xlm, ten...")
                when '/price #{from}'
                    bot.api.send_message(chat_id: message.chat.id, text: "cuy #{from}")

                end
            end
            end
    end


end