
class Barracks

attr_reader :food, :gold, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def can_train_footman?
    food >= 2 && gold >= 135
  end

  def train_footman
   if can_train_footman?
    @gold -= 135
    @food -= 2
    Footman.new
    else
      nil
    end
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    Peasant.new
  end

  def can_train_peasant?
    food > 5 && gold > 90 
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      nil
    end
  end

  def can_train_seigeengine?
    food > 3 && gold > 200 && lumber > 60 
  end

  def damage(amount)
    @health_points -= amount
  end

  def train_siege_engine
    if can_train_seigeengine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SiegeEngine.new
    else
      nil
    end
  end

end



  # def food=(value)
  #   @food = 1
  # end

  # def gold=(value)
  #   @gold = 134
  # end


