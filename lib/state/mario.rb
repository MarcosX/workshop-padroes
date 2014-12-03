class Mario
  #states
  Dead = :dead
  Small = :small
  Flower = :flower
  Star = :star

  attr_reader :current_state
  def initialize
    @current_state = Mario::Small
  end

  def pick_flower
    return if @current_state == Mario::Star
    @current_state = Mario::Flower
  end

  def pick_star
    @current_state = Mario::Star
  end

  def take_damage
    return if @current_state == Mario::Star
    if @current_state == Mario::Small
      @current_state = Mario::Dead
    else
      @current_state = Mario::Small
    end
  end
end
