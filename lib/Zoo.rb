require 'pry'

# Make sure to add :zoo as a attr_accessor in Animal

class Zoo
  # @name should return the name of the Zoo instance.
  # @location should return the location of the Zoo instance.
  attr_reader :name, :location

  # Create an empty array to hold all Zoo instances.
  ZOOS = []

  # A Zoo should be initialized with a name and a location (strings).
  def initialize(name, location)
    @name = name
    @location = location
    # Add each instance to the array.
    ZOOS << self
  end

  # Return the whole array of Zoo instances.
  def self.all
     ZOOS
  end

  # We need a way to add animals to our Zoo... Since Animals are initialized with
  # nickname, species, weight, and zoo use them as arguments, and self for zoo.
  def acquire_animal(nickname, species, weight)
    Animal.new(nickname, species, weight, self)
  end

  # This should return all of the animals that belong to the instance of Zoo
  # that this instance method is called on.
  def animals
    # Animal.all => array of all animals (from Animal).
    # This will select the animals whose .zoo value is equal to the current
    # instance of Zoo we are on.
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  # Should return an array of all the species of the animals in the current
  # instance of Zoo that this is called on. Only list each species once!
  def animal_species
    # Make a new array (species) then iterate through the animals within
    # the current Zoo instance (self.animals) to collect (map) their species.
    species = self.animals.map do |animal|
      animal.species
    end
    # Delete any duplicates with .uniq!
    species.uniq!
  end

  # Should take in an animal's species as an argument and return an array of all
  # the animals in that zoo, which are of that species.
  def find_by_species(species)
    # Iterate through the animals within the current Zoo instance (self.animals)
    self.animals.select do |animal|
      # Select the animals whose .species == species passed in as argument.
      animal.species == species
    end
  end

  # Should return an array of ALL THE NICKNAMES of animals that a specific
  # instance of a zoo has. self.animals is all animals in current instance.
  def animal_nicknames
    self.animals.map do |animal|
      # Collect (map) the nicknames!
      nickname = animal.nickname
    end
  end

  # Should take in a location as an argument and return an array of all the
  # zoos within that location. Similar to find_by_species.
  def self.find_by_location(location)
    # self.all => the whole array of all the zoos.
    self.all.select do |zoo|
      # Select the zoo's whose .location == location passed in as argument.
      zoo.location == location
    end
  end

end
