require 'weather_checker'

describe WeatherChecker do
  describe '.new' do
    let (:checker) { WeatherChecker.new("#{__dir__}/fixtures/test.html") }
    it 'should return city and temperature' do
      expect(checker.city).to eq 'Москва'
      expect(checker.temperature).to eq -11
    end
  end
end
