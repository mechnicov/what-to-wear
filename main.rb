require_relative 'lib/clothing'
require_relative 'lib/wardrobe'
require_relative 'lib/weather_checker'

checker = WeatherChecker.new('https://www.yandex.ru')
temperature = checker.temperature
city = checker.city

wardrobe = Wardrobe.new("#{__dir__}/data")
clothes_for_today = wardrobe.clothes_for_today(temperature)

STDOUT.puts "#{city}. За окном #{temperature}°C"
if clothes_for_today.empty?
  STDOUT.puts "\nПо такой погоде надеть нечего"
else
  STDOUT.puts "\nПредлагаем сегодня надеть:\n\n"
  STDOUT.puts clothes_for_today
end
