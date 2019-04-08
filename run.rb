require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

flatiron_zoo = Zoo.new("Flatiron Zoo", "81 Prospect St.")
access_labs_zoo = Zoo.new("Access Labs Zoo", "DUMBO")

harambe = Animal.new("gorilla", "400lbs", "Ha-rambe", flatiron_zoo)
khan = Animal.new("tiger", "150lbs", "terror-kHan", flatiron_zoo)
koko = Animal.new("gorilla", "200lbs", "koko", flatiron_zoo)
bobo = Animal.new("gorilla", "175lbs", "bobo", access_labs_zoo)
tony = Animal.new("tiger", "175lbs", "Tony", access_labs_zoo)

puts flatiron_zoo.animals

puts flatiron_zoo.animal_species

koko.zoo

Animal.find_by_species("tiger")

flatiron_zoo.find_by_species("gorilla")

puts Zoo.find_by_location("DUMBO")
puts "done"
