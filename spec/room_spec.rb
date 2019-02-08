require 'spec_helper'

RSpec.describe Room do
  it "can create a room" do
    r = Room.new(10, 10, 15)
    expect(r.length).to eq 10
    expect(r.width).to eq 10
    expect(r.height).to eq 15
    r2 = Room.new()
    expect(r2.height).to eq 10
  end
  it "validates length value" do
    expect{ Room.new(-1, 10) }.to raise_error(InvalidNaturalNumberException)
  end
  it "validates width value" do
    expect{ Room.new(10, -1) }.to raise_error(InvalidNaturalNumberException)
  end
  it "validates height value" do
    expect{ Room.new(10, 10, -1) }.to raise_error(InvalidNaturalNumberException)
  end

end