
module Rolls
    def roll(type_of_dice, number_of_dice)
        puts "rolling #{number_of_dice} d#{type_of_dice}(s)"
        number_of_dice.times{d = rand 1..type_of_dice
            print "#{d} "
        return d if number_of_dice==1 }
    end
end

class MetaData
    attr_reader :challenge_rating, \
                :experience, :damage, :movement, \
                :state
end

class Trap
    attr_accessor :type, :damage
    def initialize(type, damage)
        @type = type
        @damage = damage
    end

    def display_trap
        puts "#{type} trap, #{damage} damage"
    end

end

class Room
    attr_accessor :length, :width, :height
    def initialize(length = ((rand 1..10) * 10),
         width = ((rand 1..10) * 10),
          height = 10)        
        @length = length
        @width = width
        @height = height
    end
    
    def display_room
        puts "The room is #{length} by #{width}"
    end

end

class Monster
    attr_accessor :name, :hp, :move
    attr_reader :actions
    include Rolls
        
    def initialize(name, hp, move)
        @name = name
        @hp = hp
        @movement = move
    end

    def method_missing(name, args = nil)
        if @actions.methods.include? name
            return args.nil? \
                       ? @actions.send(name) \
                       : @actions.send(name, args) 
        end
        super.method_missing(name, args)
    end
end

class Humanoid < Monster
    def initialize (name, hp, move)
        super(name, hp, move)
        @actions = Actions.new(name)
        @organize = Organization.new(name)
    end   
end

class Animal < Monster
    attr_accessor :attack_type
    def initialize (name, hp, move, attack_type = "bite")
        super(name,hp,move)
        @attack_type = attack_type
        @actions = Actions.new(name)
    end
end

class Undead < Monster
    def initialize (name, hp, move)
        super(name, hp, move)
        @actions = MagicalActions.new(name)
    end
end

class Organization
    attr_reader :name
    include Rolls
    def initialize(name)
        @name = name
    end

    def organize (type, size)
        group = Array.new
         size.times{|i|
            group[i] = type.new("Gobby", 8, 30)
        }
        puts group
    end
end

class Actions
    attr_reader :name
    include Rolls
    def initialize(name)
        @name = name
    end

    def attack (target)
        puts " attacks #{target}"
    end
        
    def moves(distance)
        puts "moves #{distance} feet"
    end

    def pick_up
        puts "pick up opject"
    end
    
    def speak(message)
        puts "#{self.name} says \"#{message}\" "
    end
    
end

class MagicalActions < Actions
    def meditate
        puts "meditating"
    end
    def cast
        puts "casts spell"
    end
    def ritual
        puts "preforms ritual"
    end
end

goblin1 = Humanoid.new "Gobby", 8, 30
squig1 = Animal.new "Gobbla", 50, 40, "Gobbles Up"
zombie1 = Undead.new "Zombo", 10, 10

goblin1.state = "Normal"
squig1.state = "Hungry"
puts goblin1.state 
puts goblin1.hp
goblin1.hp = goblin1.roll 8, 1
puts goblin1.hp
puts "#{squig1.name} is #{squig1.state}"
puts "#{squig1.name} #{squig1.attack_type} a rat"

goblin1.speak "My Mushrooooom!!"
goblin1.moves 50
print goblin1.name
goblin1.attack zombie1.name
r = goblin1.roll 20, 1
puts "\n#{goblin1.name} rolls a #{r}"
zombie1.speak "BraAAains!!"
zombie1.cast

goblin1.roll 6, 4

o = Organization.new "Goblin Gang"
o.organize(Humanoid, 10)
puts o.name

r = Room.new 20, 50
r.display_room
r1 = Room.new
r1.display_room

t = Trap.new "dart", 1
t.display_trap
t2 = Trap.new "pit", (rand 1..10)
t2.display_trap