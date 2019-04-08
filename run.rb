require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


aswp = Zoo.new("African Safari Wildlife Park", "OH")
co = Zoo.new("CuriOdyssey", "CA")

monkey = Animal.new("Monkey", 40, "Little Devil", co)
donkey = Animal.new("Donkey", 100, "Eeyore", co)
donkey2 = Animal.new("Donkey", 500, "Chonker", co)
donkey3 = Animal.new("Donkey", 140, "Mike", aswp)
donkey4 = Animal.new("Donkey", 120, "Mary", aswp)
giraffe = Animal.new("Giraffe", 220, "Long neck dude", co)

binding.pry

puts "done"
