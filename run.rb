require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
flatiron_zoo = Zoo.new("Flatiron Zoo", "81 Prospect St.")

access_labs_zoo = Zoo.new("Access Labs Zoo", "Dumbo")

harambe = Animal.new("gorilla", "400lbs", "Ha-rambe", flatiron_zoo)
khan = Animal.new("tiger", '150lbs', "terror", flatiron_zoo)

coco = Animal.new("gorilla", "150lbs", "signing gorilla", flatiron_zoo)

bobo = Animal.new("gorilla", '200lbs', 'bob', access_labs_zoo)

harambe.nickname
flatiron_zoo.animals

harambe.zoo

binding.pry
puts "done"
