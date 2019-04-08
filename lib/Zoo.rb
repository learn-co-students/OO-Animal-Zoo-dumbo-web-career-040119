class Zoo

    attr_reader :name, :location, :species

    @@all = []

    def initialize(name,location)
        @name = name
        @location = location
        @@all << self
    end

    def animals
        #binding.pry
        Animal.all.select do |animal|
            #binding.pry
            animal.zoo_location == self
        end
    end

    def animal_species
        new1 = Animal.all.select do |animal|
            animal.zoo_location == self
        end
        
        new2 = new1.map do |element|
            element.species
        end
        new2.uniq
        
    end


    def find_by_species(species)
        #binding.pry
        Animal.all.select do |animal|
            #binding.pry
            animal.zoo_location == self && species.species == animal.species
        end
    end

    def animal_nicknames
        new1 = Animal.all.select do |animal|
            #binding.pry
            animal.zoo_location == self     
        end
        
        new1.map do |zoo_animals|
            zoo_animals.nickname
        end 
        #binding.pry
    end

    def find_by_location
        Animal.all.select do |animals|
            animals.zoo_location == self
        end
        #binding.pry
    end

    def self.all 
        @@all
    end

end
