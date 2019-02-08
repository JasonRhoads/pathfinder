require_relative 'validate_natural_number'

class Dice
  include ValidateNaturalNumber
  def self.roll(d_number, number_of_dice = 1)
    t = ValidateNaturalNumber.validate_natural_number(d_number, number_of_dice)
    dice = []
    number_of_dice.times{dice.push(rand (1..d_number))}
    dice
  end
  
end