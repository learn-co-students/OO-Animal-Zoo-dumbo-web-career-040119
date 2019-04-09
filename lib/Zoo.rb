class Zoo

attr_reader :name, :location

@@all = []

def initialize(name, location)
  @name = name
  @location = location
  @@all << self
end

def self.all
  @@all
end

def animals
  Animal.all.select do |animal|
    animal.zoo == self
  end
end

def animal_species
  species_array = self.animals.map(&:species).uniq
end

def find_by_species(species)
  self.animals.select do |animal|
    animal.species == species
  end
end

def animal_nicknames
  self.animals.map(&:nickname)
end



def self.find_by_location(location)
  zoo_locations = self.all.select {|zoo| zoo.location == location}
end


end
