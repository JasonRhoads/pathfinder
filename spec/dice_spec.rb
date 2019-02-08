require 'spec_helper'

RSpec.describe Dice do
  it "can test a roll" do
    r = Dice.roll(6,4)
    expect(r.size).to eq 4
    expect(r[0]).to be_between(1,6)
    expect(r[1]).to be_between(1,6)
    expect(r[2]).to be_between(1,6)
    expect(r[3]).to be_between(1,6)
    # TBD - ensure that each value returned in the resulting array is 1..6
    # TBD - passing in invalid values for die type or number rolls raises appropriate errors
  end
  
  it "validates number of dice value" do
    expect{ Dice.roll(-1, 6) }.to raise_error(InvalidNaturalNumberException)
  end

  it "validates dice value" do
    expect{ Dice.roll(6, -1) }.to raise_error(InvalidNaturalNumberException) 
  end

end