describe DailyRate do
  it 'uses plain rate for weekdays' do
    wednesday = Day.new 2014, 12, 10
    rate = DailyRate.new(flat_rate: 100, day: wednesday)
    expect(rate.quote).to eq(100)
  end

  it 'uses plain rate + 25% for weekends' do
    saturday = Day.new 2014, 12, 13
    rate = DailyRate.new(flat_rate: 100, day: saturday)
    expect(rate.quote).to eq(125)
  end

  # TODO
  # Adicionar 25% para dias que sao feriados
  # Adicionar 10% para dias que sao proximos de finais de semana ou feriados
end
