class Maria
  #states
  Dead = :dead
  Small = :small
  Flower = :flower
  Star = :star

  attr_reader :current_state
  def initialize
    @current_state = Maria::Small
  end

  def pick_flower
    return if @current_state == Maria::Star
    @current_state = Maria::Flower
  end

  def pick_star
    @current_state = Maria::Star
  end

  def take_damage
    return if @current_state == Maria::Star
    if @current_state == Maria::Small
      @current_state = Maria::Dead
    else
      @current_state = Maria::Small
    end
  end
end
