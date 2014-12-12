class StateFlower
  
  def pick_flower
    self
  end
  
  def pick_star
    StateStar.new
  end
  
  def take_damage
    StateSmall.new
  end 
  
  def pick_leaf
    StateLeaf.new
  end
end