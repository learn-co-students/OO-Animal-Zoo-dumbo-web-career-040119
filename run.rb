require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


flatiron_zoo = Zoo.new("Flatiron Zoo", "81 Prospect St.")

access_labs_zoo = Zoo.new("Access Labs", "DUMBO")

harambe = Animal.new("gorilla", "400lbs", "Ha-rambe", flatiron_zoo)

khan = Animal.new("tiger", "150lbs", "terror-kHan", flatiron_zoo)

coco = Animal.new("gorilla", "150lbs", "signing gorilla", flatiron_zoo)

bobo = Animal.new("chimp", "200lbs", "bob", access_labs_zoo)



flatiron_zoo.animal_species

flatiron_zoo.find_by_species("gorilla")

Zoo.find_by_location("DUMBO")


binding.pry
puts "done"
