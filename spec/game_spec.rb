require 'game'

describe Game do

  let(:player1) {double :player1}
  let(:player2) {double :player2}
  subject(:game) {described_class.new(player1, player2)}

  let(:player){double :player, hurt: nil}

    describe '#attack' do
      it 'expects to call the hurt method' do
       expect {game.attack(player)}.not_to raise_error
     end
    end

    describe '#initialize' do
      it 'expects to 2 arguments on instatiation' do
        expect{described_class.new(player1,player2)}.not_to raise_error
      end
    end
end
