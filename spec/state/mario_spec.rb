describe Mario do
  it 'has the small state by default' do
    expect(Mario.new.current_state).to eq(Mario::Small)
  end

  context 'current state is small Mario' do
    it 'picks a flower and change state to Mario::Flower' do
      mario = Mario.new
      mario.pick_flower()
      expect(mario.current_state).to eq(Mario::Flower)
    end

    it 'takes damage and chage state to Mario::Dead' do
      mario = Mario.new
      mario.take_damage()
      expect(mario.current_state).to eq(Mario::Dead)
    end
  end

  context 'current state is Mario with Flower' do
    it 'picks a flower and stays in the same stage' do
      mario = Mario.new
      mario.pick_flower()
      mario.pick_flower()
      expect(mario.current_state).to eq(Mario::Flower)
    end

    it 'takes damage and chage state to Mario::Small' do
      mario = Mario.new
      mario.take_damage()
      expect(mario.current_state).to eq(Mario::Dead)
    end
  end

  context 'current state is Mario with Star' do
    it 'picks a flower and stays in the same stage' do
      mario = Mario.new
      mario.pick_star()
      mario.pick_flower()
      expect(mario.current_state).to eq(Mario::Star)
    end

    it 'takes damage and stays in the same stage' do
      mario = Mario.new
      mario.pick_star()
      mario.take_damage()
      expect(mario.current_state).to eq(Mario::Star)
    end
  end

  # todo Adicionar Leaf status
  # Transicoes de Leaf
  # Mario::Small -> Mario::Leaf
  # Mario::Flower -> Mario::Leaf
  # Mario::Leaf -> Mario::Leaf
  # Mario::Star -> Mario::Star
  # Ao tomar dano, Mario volta para Mario::Small

  # todo Adicionar estado composto de Star
  # Ao pegar a estrela, mario mantem o mesmo estado, mas com estrela
  # Mario::Small -> Mario::SmallWithStar
  # Mario::Flower -> Mario::FlowerWithStar
  # Mario::Leaf -> Mario::LeafWithStar
  # Nada acontece com mario ao tomar dano quando o estado tem estrela
  # As mudancas de estado ao pegar flor e folha ocorrem normalmente
end
