require 'pry'

class Animal
  attr_accessor :weight
  attr_reader :species, :nickname

  ANIMAL = []

  def initialize(nickname, weight, species, zoo)
    @nickname = nickname
    @weight = weight
    @species = species
    @zoo = zoo
    ANIMAL << self
  end

  def species
    @species
  end

  def nickname
    @nickname
  end

  def weight
    @weight
  end

  def weight=(weight)
    @weight = weight
  end

  def zoo
    @zoo
  end

  def self.find_by_species(species)
    self.all.select do |animal|
      binding.pry
      animal.species == species
    end
  end

  def self.all
    ANIMAL
  end


end
