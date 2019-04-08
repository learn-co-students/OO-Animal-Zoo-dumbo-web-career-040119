require 'pry'

# Make sure to add :zoo as a attr_accessor in Animal b/c we need to initialize
# each animal with a zoo attribute.
# Animals HAVE ONE zoo... ZOO's HAVE MANY animals.

class Animal
  # We dont want to be able to change species or nickname, but weight can change.
  attr_reader :species, :nickname
  attr_accessor :weight, :zoo

  # Create an empty array to hold all Animal instances.
  ANIMALS = []

  # Animals are initialized with the following arguments...
  def initialize(nickname, species, weight, zoo)
    @nickname = nickname
    @species = species
    @weight = weight
    @zoo = zoo
    # Add each Animal to the array ANIMALS.
    ANIMALS << self
  end

  # Return the array of ANIMALS.
  def self.all
    ANIMALS
  end

  # Should take in an animal's species as an argument and return an array of
  # all the animals, which are of that species.
  def self.find_by_species(species)
    # Iterate through the array of all Animal instances.
    self.all.select do |animal|
      # Select the animals whose .species value == species passed in as argument.
      animal.species == species
    end
  end

end
