require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Zoo1","Jersey City")
zoo2 = Zoo.new("Zoo2", "Brooklyn")
zoo3 = Zoo.new("Zoo3", "New York")
zoo4 = Zoo.new("Zoo4", "Manhattan")

dog1 = Animal.new('Dog',45,'dog1',zoo1)
dog2 = Animal.new('Dog',89,'dog2',zoo1)
dog3 = Animal.new('Dog',67,'dog3',zoo2)
horse1 = Animal.new('Horse',300,'horse1',zoo2)
horse2 = Animal.new('Horse',500,'horse2',zoo2)
horse3 = Animal.new('Horse',400,'horse3',zoo3)
horse4 = Animal.new('Horse',300,'horse4',zoo3)
bird1 = Animal.new('Bird',1,'bird1',zoo4)
bird2 = Animal.new('Bird',2, 'bird2',zoo4)
cat1 = Animal.new('Cat',20,'cat1',zoo1)
cat2 = Animal.new('Cat',15,'cat2',zoo2)
cat3 = Animal.new('Cat',17, 'cat3',zoo2)
wolf1 = Animal.new('Wolf',150,'wolf1',zoo4)
wolf2 = Animal.new('Wolf',175, 'wolf2',zoo4)
wolf3 = Animal.new('Wolf',180,'wolf3',zoo2)
panda1 = Animal.new('Panda',400,'panda1',zoo1)
panda2 = Animal.new('Panda',500,'panda2',zoo1)
panda3 = Animal.new('Panda',300,'panda3',zoo2)


bird1.zoo
panda1.find_by_species

zoo1.animals

zoo2.find_by_species(horse1)

zoo1.animal_nicknames

zoo4.find_by_location

zoo3.animal_species
#binding.pry


#binding.pry
puts "done"
