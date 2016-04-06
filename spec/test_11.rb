require_relative 'spec_helper'
require 'pry'

# A Footman should be able to attack other units as well as receive damage
# Later on, other units such as the peasant will be incapable of attacking

describe 'Enhancements 1' do

  before :each do
    
    @barracks = Barracks.new

  end


  describe "#new" do
    it "Barracks starts with 500 HP" do
    expect(@barracks.health_points).to eq(500)  
    end
  end

  describe "#attack!" do
    it "Footman #attack! does half damage" do
       @footman = Footman.new
       @footman.attack!(@barracks)
       expect(@barracks.health_points).to eq(495)
    end
  end

  describe "#damage" do
    it "Barracks can receive damage" do
      @barracks.damage(495)
      expect(@barracks.health_points).to eq(5)
    end
  end

  
end
