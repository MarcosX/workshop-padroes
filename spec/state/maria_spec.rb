describe Maria do
  it 'has the small state by default' do
    expect(Maria.new.current_state).to eq(Maria::Small)
  end

  context 'current state is small Maria' do
    it 'picks a flower and change state to Maria::Flower' do
      maria = Maria.new
      maria.pick_flower()
      expect(maria.current_state).to eq(Maria::Flower)
    end

    it 'takes damage and chage state to Maria::Dead' do
      maria = Maria.new
      maria.take_damage()
      expect(maria.current_state).to eq(Maria::Dead)
    end
  end

  context 'current state is Maria with Flower' do
    it 'picks a flower and stays in the same stage' do
      maria = Maria.new
      maria.pick_flower()
      maria.pick_flower()
      expect(maria.current_state).to eq(Maria::Flower)
    end

    it 'takes damage and chage state to Maria::Small' do
      maria = Maria.new
      maria.take_damage()
      expect(maria.current_state).to eq(Maria::Dead)
    end
  end

  context 'current state is Maria with Star' do
    it 'picks a flower and stays in the same stage' do
      maria = Maria.new
      maria.pick_star()
      maria.pick_flower()
      expect(maria.current_state).to eq(Maria::Star)
    end

    it 'takes damage and stays in the same stage' do
      maria = Maria.new
      maria.pick_star()
      maria.take_damage()
      expect(maria.current_state).to eq(Maria::Star)
    end
  end

  # todo Adicionar Leaf status
  # Transicoes de Leaf
  # Maria::Small -> Maria::Leaf
  # Maria::Flower -> Maria::Leaf
  # Maria::Leaf -> Maria::Leaf
  # Maria::Star -> Maria::Star
  # Ao tomar dano, Maria volta para Maria::Small

  # todo Adicionar estado composto de Star
  # Ao pegar a estrela, maria mantem o mesmo estado, mas com estrela
  # Maria::Small -> Maria::SmallWithStar
  # Maria::Flower -> Maria::FlowerWithStar
  # Maria::Leaf -> Maria::LeafWithStar
  # Nada acontece com maria ao tomar dano quando o estado tem estrela
  # As mudancas de estado ao pegar flor e folha ocorrem normalmente
end
