class Wardrobe
  def initialize(folder)
    @wardrobe =
      Dir["#{folder}/*.wear"].
        map { |path| File.readlines(path, chomp: true) }.
        map { |line| Clothing.new(line[0],
                                  line[1],
                                  Range.new(*line[2].delete('()').split(', ').map(&:to_i))) }
  end

  def clothes_for_today(temperature)
    @wardrobe.
      select { |clothing| clothing.temperature_range.include?(temperature) }.
      shuffle.
      uniq(&:type).
      map { |clothing| "#{clothing.name} (#{clothing.type}) #{clothing.temperature_range}" }
  end
end
