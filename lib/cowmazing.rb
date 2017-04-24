
require "net/http"
require "uri"

require "sinatra"
require "sinatra/json"

require 'rubygems'

class Cowmazing

  def self.cowify(string_to_cowify,html_or_text)
    string_to_cowify = string_to_cowify.gsub(' ','%20')
    string_to_cowify = "http://cowsay.morecode.org/say?message=#{string_to_cowify}&format=#{html_or_text}"
    uri = URI.parse(string_to_cowify)
    req = Net::HTTP::Get.new(uri.to_s)
    response = Net::HTTP.get_response(uri)
    body = Net::HTTP.get(uri)
    return body
  end

  def self.get_string_between_markers whole_string, marker1, marker2
    whole_string[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1]
  end

  def self.strip_ads(string_to_de_ad)
    # remove moo button
    body = get_string_between_markers(string_to_de_ad,'MOO!</a></h1>','</html>')
    return body
  end

  def self.moo(string_to_cowify)
    @cow_quote = strip_ads(cowify(string_to_cowify,'html'))
    return @cow_quote
  end
end
