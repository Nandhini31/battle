require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player){double :player, hurt: nil}

    describe '#attack' do
      it 'expects to call the hurt method' do
       expect {game.attack(player)}.not_to raise_error
     end
    end
end
