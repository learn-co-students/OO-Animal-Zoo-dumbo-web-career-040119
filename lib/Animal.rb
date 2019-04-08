class Animal

  @@all = []
  attr_reader :species, :nickname, :zoo
  attr_accessor :weight

  def initialize(species, weight, nickname, zoo)
    @species, @weight, @nickname,
    @zoo = species, weight, nickname, zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select {|animal| animal.species == species}
  end

end
