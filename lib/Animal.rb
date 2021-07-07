class Animal
    attr_reader :species, :nickname, :zoo_location
    attr_accessor :weight
    @@all = []
    def initialize(species,weight,nickname,zoo_location)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo_location = zoo_location
        @@all << self
    end

    def zoo
        #binding.pry
        self.zoo_location
    end

    def find_by_species
        #binding.pry
        Animal.all.select do |animal|
            animal.species == self.species
        end
    end

    def self.all
        @@all
    end
    
end
