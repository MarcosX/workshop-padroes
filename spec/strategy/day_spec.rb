describe Day do
  it 'knows if day is weekend' do
    week_day = Day.new 2014, 12, 10
    weekend = Day.new 2014, 12, 13
    
    expect(week_day.weekend?).to be false
    expect(weekend.weekend?).to be true
  end

  it 'knows if day is a holiday' do
    holiday = Day.new 2014, 12, 8

    expect(holiday.holiday?).to be true
  end

  it 'knows what is the next day' do
    today = Day.new 2014, 12, 11
    tomorrow = Day.new 2014, 12, 12
    expect(tomorrow).to eq(today.next_day)
  end

  it 'knows what is the previous day' do
    today = Day.new 2014, 12, 11
    yesterday = Day.new 2014, 12, 10
    expect(yesterday).to eq(today.previous_day)
  end
end
