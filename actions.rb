class Actions
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def attack (target)
        puts " attacks #{target}"
    end
        
    def moves(distance)
        puts "moves #{distance} feet"
    end

    def pick_up(i = "object")
        puts "pick up #{i}"
    end
    
    def speak(message)
        puts "#{self.name} says \"#{message}\" "
    end
    
end