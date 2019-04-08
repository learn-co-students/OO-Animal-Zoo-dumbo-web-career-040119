class Zoo

  attr_reader :name, :location, :animals

  ALL = []

  def initialize(name, location)
    @name = name
    @location = location
    ALL << self
  end

  def self.all
    ALL
  end

  # def animals
  #   Animal.all
  # end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end

  # def animal_species
  #   Animal.all.map do |animal|
  #     animal.species
  #   end.uniq
  # end
  #
  def animal_species
    self.animals.map do |animal|
      animal.species
    end.uniq
  end

  def animal_species
    self.animals.map(&:species).uniq
  end

  def find_by_species(animal_species)
    self.animals.select do |animal|
      animal_species == animal.species
    end
  end

  def animal_nicknames
    self.animals.map do |animal|
      animal.nickname
    end

    # self.animals.map(&:nickname)
  end

  def self.find_by_location(location)
    self.all.select do |zoo|
      zoo.location == location
    end
  end


end
