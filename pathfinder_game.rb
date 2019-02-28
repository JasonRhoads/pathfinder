require 'rubygems'
require 'bundler/setup'

require_relative 'pathfinder'

goblin1 = Humanoid.new("Gobby", 8, 30)
squig1 = Animal.new("Gobbla", 50, 40, "Gobbles Up")
zombie1 = Undead.new("Zombo", 10, 10)

goblin1.state = "Normal"
squig1.state = "Hungry"
puts goblin1.state 
puts goblin1.hp
goblin1.hp = Dice.roll 8
puts goblin1.hp
puts "#{squig1.name} is #{squig1.state}"
puts "#{squig1.name} #{squig1.attack_type} a rat"

goblin1.speak "My Mushrooooom!!"
goblin1.moves 50
print goblin1.name
goblin1.attack zombie1.name
r = Dice.roll 20
puts "\n#{goblin1.name} rolls a #{r}"
zombie1.speak "BraAAains!!"
zombie1.cast

Dice.roll(6, 4)

o = Organization.new "Goblin Gang"
o.organize(Humanoid, 10)
puts o.name

r = Room.new(20, 50)
r.display_room
r1 = Room.new
r1.display_room

t = Trap.new(name:"Arrow Trap", damage: 1, hit_bonus: 15, effect: "Range Attack")
t.display_trap
