class Wardrobe
  def initialize(folder)
    @wardrobe =
      Dir["#{folder}/*.wear"].
        map { |path| File.readlines(path, chomp: true) }.
        map { |line| Garment.new(line[0],
                                 line[1],
                                 Range.new(*line[2].delete('()').split(', ').map(&:to_i))) }
  end

  def garments_for_today(temperature)
    @wardrobe.
      select { |garment| garment.suitable?(temperature) }.
      shuffle.
      uniq(&:type).
      map(&:to_s)
  end
end
