require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"

require 'pry'

flatiron_zoo = Zoo.new("Flatiron Zoo", "81 Prospect St.")
Access_zoo = Zoo.new("Access Labs", "81 Prospect St.")
other_zoo = Zoo.new("other zoo", "866 hart st.")

harambe = Animal.new("gorilla", "400lbs", "Ha-rambe", flatiron_zoo)
khan = Animal.new("tiger", "150lbs", "terror-kHan", flatiron_zoo)
tig = Animal.new("tiger", "110lbs", "tig", flatiron_zoo)

hippo = Animal.new("hippo", "110lbs", "hipciu", other_zoo)
fluff = Animal.new("dog", "50lbs", "fluff", other_zoo)


Animal.find_by_species("tiger")
