require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

brooklyn = Zoo.new("Flatiron", "Dumbo")
manhattan = Zoo.new("Oculus", "FiDi")
dog1 = Animal.new("max", "20 lbs", "Dog", brooklyn)
dog2 = Animal.new("coco", "5 lbs", "Dog", manhattan)
cat1 = Animal.new("daisy", "12 lbs", "Cat", brooklyn)
cat2 = Animal.new("bean", "9 lbs", "Cat", manhattan)

#Test your code here


binding.pry
puts "done"
