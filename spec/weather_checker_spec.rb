require 'weather_checker'

RSpec.describe WeatherChecker do
  describe '.get_weather_data' do
    let (:checker) { WeatherChecker.get_weather_data("#{__dir__}/fixtures/test.html") }
    it 'should return city and temperature' do
      expect(checker).to eq(:city => 'Stockholm, Sweden', :temperature => -2)
    end
  end
end
