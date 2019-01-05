require 'nokogiri'
require 'open-uri'
class WeatherChecker
  attr_reader :city, :temperature
  def initialize
    doc  = Nokogiri::HTML(open('https://www.yandex.ru/'))
    @city = doc.css('span.geolink__reg').first.text
    @temperature = doc.css('div.weather__temp').first.text.delete('+°').gsub('−','-')
  end
end
