class StateLeaf
  
  def pick_flower
    StateFlower.new
  end
  
  def pick_star
    StateStar.new
  end
  
  def take_damage
    StateSmall.new
  end 
  
  def pick_leaf
  self
end
end