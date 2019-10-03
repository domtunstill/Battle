require 'game'

describe Game do

  let(:name) { :name }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject {described_class.new(player_1,player_2)}

  it 'initializes with player 1' do
    expect(subject.player_1).to eq player_1
  end

  it 'initializes with player 2' do
    expect(subject.player_2).to eq player_2
  end

  it 'attacks the other player' do
    expect(player_1).to receive(:attacked)
    subject.attack(player_1)
  end

end
