class DailyRate
  attr_reader :flat_rate, :day

  def initialize flat_rate: 100, day: Day.new
    @flat_rate = flat_rate
    @day = day
  end

  def quote
    @day.weekend? ? @flat_rate * 1.25 : @flat_rate
  end
end
