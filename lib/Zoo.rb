class Zoo

  @@all = []
  attr_reader :title, :location
  attr_accessor :animal

  def initialize(title, location)
    @title = title
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_location(location)
    @@all.select {|zoo| zoo.location == location}
  end

  def animals
    Animal.all.select {|animal| animal.zoo == self}
  end

  def animal_species
    self.animals.map(&:species).uniq
  end

  def find_by_species(species)
    self.animals.select {|animal| animal.species == species}
  end

  def animal_nicknames
    self.animals.map(&:nickname)
  end

end
