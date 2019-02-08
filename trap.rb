require_relative 'exception'
require_relative 'validate_natural_number'

class Trap
    attr_accessor :type, :damage
    def initialize(type, damage)
        t = ValidateNaturalNumber.validate_natural_number(damage)
        @type = type
        @damage = damage
    end

    def display_trap
        puts "#{type} trap, #{damage} damage"
    end
end