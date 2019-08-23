require 'discordrb'
require 'configatron'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'json'
require_relative 'config/config.rb'

module Bot
    bot = Discordrb::Commands::CommandBot.new token: configatron.token, prefix: configatron.prefix

    # Discord general commands
    module DiscordGeneralCommands; end

    Dir['src/commands/*.rb'].each { |mod| load mod }
    DiscordGeneralCommands.constants.each do |mod|
    bot.include! DiscordGeneralCommands.const_get mod
    end

    # Discord general commands
    module DiscordIndodaxCommands; end

    Dir['src/commands/indodax/*.rb'].each { |mod| load mod }
    DiscordIndodaxCommands.constants.each do |mod|
    bot.include! DiscordIndodaxCommands.const_get mod
    end

    # Discord events
    module DiscordEvents; end

    Dir['src/events/*.rb'].each { |mod| load mod }
    DiscordEvents.constants.each do |mod|
    bot.include! DiscordEvents.const_get mod
    end

    # about
    puts configatron.site

    # Run the bot
    bot.run
end
