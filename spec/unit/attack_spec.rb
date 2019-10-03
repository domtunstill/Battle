require 'attack'

describe Attack do

  let(:name) { :name }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'attacks the other player' do
      allow(player_2).to receive(:attacked)
      subject.attack(player_2)
    end

end
