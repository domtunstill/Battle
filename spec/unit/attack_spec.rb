require 'attack'

describe Attack do

  let(:name) { :name }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:players) { [player_1, player_2] }
  let(:move) { 'Punch!' }

  # it 'initializes with '

  it 'attacks the other player' do
      allow(player_2).to receive(:attacked)
      subject.attack(players, move)
      expect(subject.damage).not_to eq 0
    end

end
