require_relative 'monster'
require_relative 'actions'

class Animal < Monster
    attr_accessor :attack_type
    def initialize (name, hp, move, attack_type = "bite")
        super(name,hp,move)
        @attack_type = attack_type
        @actions = Actions.new(name)
    end
end