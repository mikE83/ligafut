# Methods added to this helper will be available to all templates in the application.

  require 'rss/2.0'
  require 'open-uri'

module ApplicationHelper


    def parseFeed (url, length)
      feed_url = url
      output = "";
      open(feed_url) do |http|
        response = http.read
        result = RSS::Parser.parse(response, false)
        output = "<span class=\"feedTitle\">#{result.channel.title}</span><br /><ul>"
        result.items.each_with_index do |item, i|
          output += "<li><a href=\"#{item.link}\">#{item.title}</a></li>" if ++i < length
        end
        output += "</ul>"
      end
      return output
    end
  end


