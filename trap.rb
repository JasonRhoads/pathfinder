require_relative 'validate_natural_number'

#type, perception dc, disable device dc, trigger, reset, effect, poison, bypass, cr
class Trap
    attr_accessor :name, :type, :damage, :hit_bonus, :perception_dc,
                  :disable_device_dc,:trigger, :reset, :duration, :effect,
                  :poison, :bypass, :cr
    def initialize(name:,
                   type: "mechanical", 
                   damage:,
                   hit_bonus: 10,
                   perception_dc: 20, 
                   disable_device_dc: 20, 
                   trigger: "touch",
                   duration: 1, 
                   reset: "none", 
                   effect:, 
                   poison: "none", 
                   bypass: "none", 
                   cr: 1)
        t1 = ValidateNaturalNumber.validate_natural_number(damage, hit_bonus,perception_dc)
        t2 = ValidateNaturalNumber.validate_natural_number(disable_device_dc, duration, cr)
        @name = name
        @type = type
        @damage = damage
        @hit_bonus = hit_bonus
        @perception_dc = perception_dc
        @disable_device_dc = disable_device_dc
        @trigger = trigger
        @duration = duration
        @reset = reset
        @effect = effect
        @poison = poison
        @bypass = bypass
        @cr = cr
    end

    def display_trap
        print "#{name} \t\t\t\t\t\t#{cr}
Type #{type}\: Perception DC #{perception_dc}\: Disable Device DC #{disable_device_dc}
Effects\:
Trigger #{trigger}\: Reset #{reset}
Effect\: Atk \+#{hit_bonus} #{effect} \(#{damage}d8\)"
    end
end