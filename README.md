
![Lang](https://img.shields.io/badge/language-ruby-red)
[![Build Status](https://travis-ci.com/rokhimin/Indodax-bot.svg?branch=master)](https://travis-ci.com/rokhimin/Indodax-bot)
![Coverage Status](https://img.shields.io/badge/coverage-99%25-brightgreen)
# Indodax Bot

### About
discord and telegram bot for check price crypto coins using API Indodax, written in Ruby ([discordrb](https://github.com/meew0/discordrb) & [telegram-bot-ruby](https://github.com/atipugin/telegram-bot-ruby))

### Info
###### API :
[API indodax](https://indodax.com/downloads/BITCOINCOID-API-DOCUMENTATION.pdf)

### use
|   Commands    |    Discord    |    Telegram    |
| ------------- | ------------- | ------------- |
|  help  | i>help | /help |
| about  | i>about | /about |
| price | i>price <name_coin> | /price <name_coin> |

### Screenshots
##### Discord
![](https://i.imgur.com/vIlPHQC.jpg)
##### Telegram
- ![](https://i.imgur.com/L19wdxK.jpg)

### developer tool tasks
install gem :
 ```
 rake gem:install
 ```
test :
 ```
 rake run:rspec
 ```
 
 ### Run Bot
discord :
 ```
 rake run:discord
 ```
telegram :
 ```
 rake run:telegram
 ```


# License
MIT License.




