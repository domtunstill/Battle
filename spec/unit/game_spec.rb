require 'game'

describe Game do

  let(:name) { :name }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject {described_class.new(player_1,player_2)}

  before do
    allow(player_1).to receive(:name)
    allow(player_2).to receive(:name)
  end

  it 'initializes with player 1' do
    expect(subject.player_1).to eq player_1
  end

  it 'initializes with player 2' do
    expect(subject.player_2).to eq player_2
  end

  it 'initializes with players array' do
    expect(subject.players).not_to be_empty
  end

end
