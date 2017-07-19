require 'player'

describe Player do
  subject(:player) {described_class.new(name)}
  let(:name) {'Dave'}
  let(:hp) {100}


  it 'returns the players name' do
    expect(player.name).to eq name
  end

  it 'returns the players HP' do
    expect(player.hp).to eq hp
  end

  it 'changes current HP by 10 when taking damage' do
    player.hurt
    expect(player.hp).to eq 90
  end

end
