require_relative 'monster'
require_relative 'actions'


class Humanoid < Monster
    attr_accessor :language
    def initialize (name, hp, move, language = "Common")
        super(name, hp, move)
        @language = language
        @actions = Actions.new(name)
        @organize = Organization.new(name)
    end   
end