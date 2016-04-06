require_relative 'spec_helper'
require 'pry'

describe 'Enhancement 3' do 

  before :each do
    
    @unit = Unit.new(100, 100)

  end

  describe "#can_attack?" do
     it "returns true a unit can attack an enemy" do
      expect(@unit.can_attack?).to be_truthy
    end

    it "returns false if cannot attack an enemy" do
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.can_attack?).to be_falsey
    end
  end
  
end