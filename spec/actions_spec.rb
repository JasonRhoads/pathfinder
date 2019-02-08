require 'spec_helper'

RSpec.describe Actions do
  it "can create a action" do
    a1 = Actions.new("Action 1")
    a2 = Actions.new("Action 2")
    expect(a1.name).to eq "Action 1"
    expect(a2.name).to eq "Action 2"
    
  end

end