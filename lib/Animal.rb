require 'pry'

class Animal

  attr_reader :species, :nickname, :zoo
  attr_accessor :weight

  @@all = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  # def nickname - we don't need it because we have reader
  #   @nickname
  # end

  def self.all
    @@all
  end
        #
        # def self.zoo - we don't need it because we have reader
        #   @zoo
        # end

  def self.find_by_species(species)
    species = @@all.select{|animal| animal.species == species}
  end

end



  # Animal Class
  # An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
  # Animal#nickname should return the nickname of the animal.
  # Animal#weight should return the weight of the animal.
  # Animal#species should return the species of the animal.
  # Animal.all should return an array of all the animal instances.
# Animal#zoo should return the zoo instance that the instance belongs to.
# Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.
