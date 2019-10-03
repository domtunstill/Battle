feature 'Testing points' do

  scenario "player 1 can see players 2's hit point" do
    sign_in_and_play
    expect(page).to have_content 'King: 100HP King: 100HP'
  end

    scenario "p1 can attack p2's hp" do
      sign_in_and_play
      allow_any_instance_of(Player).to receive(:rand) {10}
      click_button('Attack!')
      expect(page).to have_content "King: 100HP King: 90HP"
    end

    scenario "p1 kills p2 and should see a lose mesage" do
      sign_in_and_play
      allow_any_instance_of(Player).to receive(:rand) {10}
      19.times {click_button('Attack!')}
      expect(page).to have_content "King loses the game!"
    end

end
