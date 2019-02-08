require_relative 'validate_natural_number'

class Room
    attr_accessor :length, :width, :height
    def initialize(length = ((rand 1..10) * 10),
         width = ((rand 1..10) * 10),
          height = 10)
        t = ValidateNaturalNumber.validate_natural_number(length, height, width)
                             
        @length = length
        @width = width
        @height = height

    end
    
    def display_room
        puts "The room is #{length} by #{width}"
    end

end