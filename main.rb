require_relative 'lib/garment'
require_relative 'lib/wardrobe'
require_relative 'lib/weather_checker'

weather_data = WeatherChecker.get_weather_data('https://www.msn.com/en-us/weather/?weadegreetype=C')
temperature = weather_data[:temperature]
city = weather_data[:city]

wardrobe = Wardrobe.new("#{__dir__}/data")
garments_for_today = wardrobe.garments_for_today(temperature)

puts "#{city}. Outside #{temperature}°C"
if garments_for_today.empty?
  puts "\nThere are no suitable garments for current weather"
else
  puts "\nToday you can put on:\n\n"
  puts garments_for_today
end
