require 'nokogiri'
require 'open-uri'
module WeatherChecker
  def self.get_weather_data(url)
    html = open(url)
    doc  = Nokogiri::HTML(html)
    html.close

    {
      city: doc.css('div.mylocations/h2/span').text,
      temperature: doc.css('span.current').text.to_i
    }
  end
end
