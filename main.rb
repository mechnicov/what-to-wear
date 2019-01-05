require_relative 'lib/clothing'
require_relative 'lib/wardrobe'

STDOUT.puts 'Сколько градусов за окном? (можно с минусом)'
temperature = gets.to_i

wardrobe = Wardrobe.new
clothes_for_today = wardrobe.clothes_for_today(temperature)

if clothes_for_today.empty?
  STDOUT.puts "\nПо такой погоде надеть нечего"
else
  STDOUT.puts "\nПредлагаем сегодня надеть:\n\n"
  STDOUT.puts clothes_for_today
end
