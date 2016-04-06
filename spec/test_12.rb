require_relative 'spec_helper'
require 'pry'

describe 'Enhancement 2' do 

  before :each do
    
    @unit = Unit.new(100, 100)

  end

  describe "#dead" do
    it "Returns true if Unit HP is 0" do
      @unit.damage(100)
      expect(@unit.dead).to eq(true)
    end
  end
  
end