require 'spec_helper'

RSpec.describe Monster do
  it "can create a monster" do
    m = Monster.new("Munster", 100, 30)
    # expect(value).to <op> value expect(8).eq 8
    # expect(9).to_not eq|ne|gt|lt 10
    # expect(8).to_not be_nil
    # expect(nil).to be_nil
    expect(m.name).to eq "Munster"
    expect(m.hp).to eq 100
    expect(m.move).to eq 30 
  end

  it "validates movement value" do
    expect{ Monster.new("Sheepy", 10, -1) }.to raise_error(InvalidNaturalNumberException)
  end

  it "validates hp value" do
    expect { Monster.new("Franky", -1, 10) }.to raise_error(InvalidNaturalNumberException)
  end
end
