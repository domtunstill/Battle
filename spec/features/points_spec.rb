feature 'Testing points' do
  scenario "player 1 can see players 2's hit point" do
    sign_in_and_play
    expect(page).to have_content 'Dom: 100/100HP'
  end
end
