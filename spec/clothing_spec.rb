require 'clothing'

describe Clothing do
  describe '.new' do
    let (:clothing) { Clothing.new('Валенки', 'Обувь', -30..-15) }
    it 'should return instance variables' do
      expect(clothing.name).to eq 'Валенки'
      expect(clothing.type).to eq 'Обувь'
      expect(clothing.temperature_range).to eq -30..-15
    end
  end
end
