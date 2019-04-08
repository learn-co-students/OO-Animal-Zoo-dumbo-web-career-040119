require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


aswp = Zoo.new("African Safari Wildlife Park", "OH")
co = Zoo.new("CuriOdyssey", "CA")

monkey = Animal.new("Monkey", 40, "Little Devil")
donkey = Animal.new("Donkey", 100, "Eeyore")
donkey2 = Animal.new("Donkey", 500, "Chonker")
donkey3 = Animal.new("Donkey", 140, "Mike")
donkey4 = Animal.new("Donkey", 120, "Mary")
giraffe = Animal.new("Giraffe", 220, "Long neck dude")

monkey.zoo = co
donkey.zoo = co
donkey2.zoo = co
donkey3.zoo = aswp
donkey4.zoo = aswp
giraffe.zoo = co

binding.pry

puts "done"
