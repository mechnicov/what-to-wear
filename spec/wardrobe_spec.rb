require 'wardrobe'

RSpec.describe Wardrobe do
  let (:wardrobe) { described_class.new("#{__dir__}/fixtures") }

  describe '#garments_for_today(temperature)' do
    it 'should offer suitable clothes' do
      expect(wardrobe.garments_for_today(-15)).to match_array(['Boots (Footwear) -15..10',
                                                               'Hat with ear flaps (Headdress) -30..-10'])
    end
  end
end
