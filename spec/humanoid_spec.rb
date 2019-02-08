require 'spec_helper'

RSpec.describe Humanoid do
  it "can create a humanoid" do
    h = Humanoid.new("Jason", 100, 50, "Dwarvish")
    expect(h.language).to eq "Dwarvish"
    h2 = Humanoid.new("Carrie", 1000, 20)
    expect(h2.language).to eq "Common"
  end

end