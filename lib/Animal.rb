require 'pry'

class Animal

    attr_accessor :weight
    attr_reader :species, :nickname, :zoo
    @@all = []
    def initialize(species, weight, nickname, zoo)
      @nickname, @weight, @species, @zoo = nickname, weight, species, zoo
      @@all << self
    end

    def self.all
      @@all
    end

  def self.find_by_species(species)
    found_species = @@all.select {|animal| animal.species == species}
  end

end
