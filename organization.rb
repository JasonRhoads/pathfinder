require_relative 'monster'
require_relative 'humanoid'
require_relative 'animal'
require_relative 'undead'

class Organization
    attr_reader :name
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