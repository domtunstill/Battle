require 'game'

describe Game do

  let(:name) { :name }
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  # Game.create(player_1,player_2)
  subject { Game.create(player_1,player_2)}
  let(:game) { Game.instance }

  before do
    allow(player_1).to receive(:name)
    allow(player_2).to receive(:name)
  end

  it 'initializes with player 1' do
    p game.player_1
    expect(game.player_1).to eq player_1
  end

  it 'initializes with player 2' do
    expect(game.player_2).to eq player_2
  end

  it 'initializes with players array' do
    expect(game.players).not_to be_empty
  end

  it 'saves the last_action as a string for user feedback' do
    p game.players
    game.last_action('Punch!', 10)
    expect(game.move_text).to eq "player_1 used Punch! and dealt 10 damage on player_2!"
  end

  it 'switches turns for the players' do
    p game.players
    game.switch_turn
    expect(game.action_text).to eq "player_1's turn to beat up player_2"
  end

  it 'registers game_over? once a player reaches 0 HP or less' do
    allow(player_1).to receive(:hp).and_return(0)
    allow(player_2).to receive(:hp).and_return(10)
    expect(game.game_over?).to eq true
  end

end
