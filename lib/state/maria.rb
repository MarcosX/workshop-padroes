class Maria

  attr_reader :current_state
  def initialize
    @current_state = StateSmall.new
  end

  def pick_flower
    @current_state = @current_state.pick_flower
  end

  def pick_star
    @current_state = @current_state.pick_star
  end
  
  def take_damage
   @current_state = @current_state.take_damage
 end
 
 def pick_leaf
   @current_state = @current_state.pick_leaf
 end
end
