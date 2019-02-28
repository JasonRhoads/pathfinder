require_relative 'validate_natural_number'
class Dice
  def self.roll(d_number, number_of_dice = 1)
    d = Dice.validate(d_number, number_of_dice)
    dice = []
    number_of_dice.times{dice.push(rand (1..d_number))}
    dice
  end
  def self.validate (dice_sides, number_of_dice)
      d = ValidateNaturalNumber.validate_natural_number(number_of_dice)
      #case die to validate the d_number to ensure that it is a valid dype of die
      case dice_sides
      when 3,4,6,8,10,12,20,100
        true
      else
        puts "Please enter a valid type of dice"
        false
      end
  end
end