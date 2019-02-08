require_relative 'actions'
require_relative 'exception'
require_relative 'validate_natural_number'

class Monster < MetaData
    attr_accessor :name, :hp, :move
    attr_reader :actions
        
    def initialize(name, hp, move)
        super()
        t = ValidateNaturalNumber.validate_natural_number(hp, move)
        @name = name
        @hp = hp
        @move = move
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