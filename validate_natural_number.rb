require_relative "exception"
module ValidateNaturalNumber
  def self.validate_natural_number (arg1, arg2 =1, arg3 =1)
        raise InvalidNaturalNumberException, "Invalid Natural Number" if (arg1 < 1 || arg2 < 1 || arg3 < 1)
  end
end