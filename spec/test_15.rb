require_relative 'spec_helper'

# Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @barracks = Barracks.new
  end

  it "has and knows its HP (health points)" do
    expect(@siege_engine.health_points).to eq(400)
  end

  it "has and knows its AP (attack power)" do
    expect(@siege_engine.attack_power).to eq(50)
  end

  describe "#train_siege_engine" do

    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 60 lumber" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440) # starts at 80
    end

    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "produces a siege_engine unit" do
      siege_engine = @barracks.train_siege_engine
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end

  end

  describe "#attack!" do
    it "SiegeEngine #attack! does 2x damage" do
       @siege_engine = SiegeEngine.new
       @siege_engine.attack!(@barracks)
       expect(@barracks.health_points).to eq(480)
    end
    context "Only attacks legally" do
      it "Raises IllegalAttackError" do
        @siege_engine = SiegeEngine.new
        @footman = Footman.new
        expect{@siege_engine.attack!(@footman)}.to raise_error(IllegalTargetError)
      end

    end
  end

end
