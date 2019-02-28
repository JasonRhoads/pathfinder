require 'spec_helper'

RSpec.describe Trap do
  it "can create a trap" do
    t = Trap.new(name:"Arrow Trap",type: "Mechanical", 
      damage: 1, hit_bonus: 15, perception_dc: 15,
      disable_device_dc: 15, trigger: "location",
      duration: 2, reset: "manual", effect: "Ranged Attack",
      poison: "Bloodroot", bypass: "yes", cr: 5)
    expect(t.name).to eq "Arrow Trap"
    expect(t.type).to eq "Mechanical"
    expect(t.damage).to eq 1
    expect(t.hit_bonus).to eq 15
    expect(t.perception_dc).to eq 15
    expect(t.disable_device_dc).to eq 15
    expect(t.trigger).to eq "location"
    expect(t.duration).to eq 2
    expect(t.reset).to eq "manual"
    expect(t.effect).to eq "Ranged Attack"
    expect(t.poison).to eq "Bloodroot"
    expect(t.bypass).to eq "yes"
    expect(t.cr).to eq 5
  end

  it "validates damage value" do
    expect { Trap.new(name:"Arrow Trap", damage: -1, effect: "Ranged Attack") }.to raise_error(InvalidNaturalNumberException)
  end

  it "validates hit bonus value" do
    expect { Trap.new(name:"Arrow Trap", damage: 1, effect: "Ranged Attack", hit_bonus: -1) }.to raise_error(InvalidNaturalNumberException)
  end

  it "validates perception dc value" do
    expect { Trap.new(name:"Arrow Trap", damage: 1, effect: "Ranged Attack", perception_dc: -1) }.to raise_error(InvalidNaturalNumberException)
  end

  it "validates disable device dc value" do
    expect { Trap.new(name:"Arrow Trap", damage: 1, effect: "Ranged Attack", disable_device_dc: -1) }.to raise_error(InvalidNaturalNumberException)
  end

  it "validates duration value" do
    expect { Trap.new(name:"Arrow Trap", damage: 1, effect: "Ranged Attack", duration: -1) }.to raise_error(InvalidNaturalNumberException)
  end
  it "validates cr value" do
    expect { Trap.new(name:"Arrow Trap", damage: 1, effect: "Ranged Attack", cr: -1) }.to raise_error(InvalidNaturalNumberException)
  end
end

