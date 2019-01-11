require 'nokogiri'
require 'open-uri'
class WeatherChecker
  attr_reader :city, :temperature
  def initialize(url)
    doc  = Nokogiri::HTML(open(url))
    @city = doc.css('span.geolink__reg').first.text
    @temperature = doc.css('div.weather__temp').first.text.delete('°').gsub('−','-').to_i
  end
end
