require 'garment'

RSpec.describe Garment do
  let (:garment) { described_class.new('Felt boots', 'Footwear', -30..-15) }

  describe '#to_s' do
    it 'should return string with garment info' do
      expect(garment.to_s).to eq 'Felt boots (Footwear) -30..-15'
    end
  end

  describe '#suitable?' do
    context 'when garment is suitable to temperature' do
      it 'should return true' do
        expect(garment.suitable?(-15)).to eq true
      end
    end

    context 'when garment is not suitable to temperature' do
      it 'should return false' do
        expect(garment.suitable?(0)).to eq false
      end
    end
  end
end
