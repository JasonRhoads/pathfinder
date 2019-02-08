require 'spec_helper'

RSpec.describe Undead do
  it "can create a undead" do
    zombo = Undead.new("Zombo", 50, 30, "Jason")
    expect(zombo.master).to eq "Jason"
    skelly = Undead.new("Skelly", 50, 30)
    expect(skelly.master).to eq "Necromancer"
  end

end