require 'spec_helper'

RSpec.describe Organization do
  it "can create a organization" do
    goblin_gang = Organization.new("Goblin Gang")
    expect(goblin_gang.name).to eq "Goblin Gang"
    
  end

end
