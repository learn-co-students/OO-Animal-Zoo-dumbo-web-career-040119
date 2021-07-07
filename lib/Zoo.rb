require 'pry'

class Zoo

  attr_accessor :name, :location

  ZOO = []

  def initialize(name, location)
    @name = name
    @location = location
    ZOO << self
  end

  def self.all
    ZOO
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  def animal_species
    self.animals.map(&:species)
  end

  def find_by_species(species)
    self.animals.select do |animal|
      animal.species == species
    end
  end

  def animal_nicknames
    self.animals.map(&:nickname)

    # same thing as below:
    # self.animals.map do |animal|
    #   animal.nickname
    # end

  end

  def self.find_by_location(location)
    self.all.select do |zoo|
      binding.pry
      zoo.location == location
    end
  end
end
