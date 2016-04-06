class SiegeEngine < Unit

attr_reader :health_points, :attack_power

  def initialize
    @health_points = 400
    @attack_power = 50
  end

  def damage(amount)
    @health_points -= amount
  end

  def attack!(enemy)
    raise IllegalTargetError unless legal_target?(enemy)
    enemy.damage(20)
  end

  def legal_target?(target)
    target.is_a?(SiegeEngine) || target.is_a?(Barracks)
  end

end