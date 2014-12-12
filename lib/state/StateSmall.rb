class StateSmall
  
  def pick_flower
    StateFlower.new
  end
  
  def pick_star
    StateStar.new
  end
  
  def take_damage
    StateDead.new
  end 
  
  def pick_leaf 
    StateLeaf.new
  end
end