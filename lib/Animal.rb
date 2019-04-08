class Animal

  attr_accessor :weight
  attr_reader :species, :nickname, :zoo

  ALL = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_species(animal_species)
      self.all.select do |animal|
      animal.species == animal_species
    end
  end

  def self.find_by_species(animal_species)
      ALL.select { |animal| animal.species == animal_species }
  end

end
