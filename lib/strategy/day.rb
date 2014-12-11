class Day
  attr_reader :time

  def initialize year, month, day
    @time = Time.new year, month, day
  end

  def weekend?
    [0,6,7].include? @time.wday
  end

  def holiday?
    @time.day == 8 && @time.month == 12
  end

  def next_day
    Day.new @time.year, @time.month, @time.day + 1
  end

  def previous_day
    Day.new @time.year, @time.month, @time.day - 1
  end

  def == day
    @time == day.time
  end
end
