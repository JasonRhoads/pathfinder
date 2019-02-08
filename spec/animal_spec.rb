require 'spec_helper'

RSpec.describe Animal do
  it "can create a animal" do
    otis = Animal.new("Otis", 50, 30, "rage")
    expect(otis.attack_type).to eq "rage"
    yogi = Animal.new("Yogi", 50, 30)
    expect(yogi.attack_type).to eq "bite"
  end       

end