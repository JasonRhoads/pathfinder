require 'spec_helper'

RSpec.describe Trap do
  it "can create a trap" do
    t = Trap.new("dart", 1)
    expect(t.type).to eq "dart"
    expect(t.damage).to eq 1
  end

  it "validates damage value" do
    expect { Trap.new("dart", -1,) }.to raise_error(InvalidNaturalNumberException)
  end
end