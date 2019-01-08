require 'wardrobe'

describe Wardrobe do
  let (:wardrobe) { Wardrobe.new("#{__dir__}/fixtures") }

  describe '#clothes_for_today(temperature)' do
    it 'should offer clothes' do
      expect(wardrobe.clothes_for_today(-15)).to match_array(['Ботинки (Обувь) -15..10',
                                                              'Шапка-ушанка (Головной убор) -30..-10'])
    end
  end
end
