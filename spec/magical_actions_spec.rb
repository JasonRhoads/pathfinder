require 'spec_helper'

RSpec.describe MagicalActions do
  it "can create a action" do
    m = MagicalActions.new("Magical Action")
    expect(m.name).to eq "Magical Action"    
  end

end