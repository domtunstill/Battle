require 'player'

describe Player do

  let(:name) { :name }
  subject { described_class.new(name) }

  it 'saves a name of the player' do
    expect(subject.name).to eq :name
  end

  it 'starts with full health' do
    expect(subject.hp).to eq 100
  end

  it 'attacks the other player' do
    expect{ subject.attacked(10) }.to change { subject.hp }.by (-10)
  end

end
