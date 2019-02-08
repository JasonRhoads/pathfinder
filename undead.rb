require_relative 'monster'
require_relative 'actions'
require_relative 'magical_actions'

class Undead < Monster
    attr_accessor :master
    def initialize (name, hp, move, master = "Necromancer")
        super(name, hp, move)
        @master = master
        @actions = MagicalActions.new(name)
    end
end