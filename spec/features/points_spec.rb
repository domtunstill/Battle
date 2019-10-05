feature 'Testing points' do

  scenario "player 1 can see players 2's hit point" do
    sign_in_and_play
    expect(page).to have_content 'Law: 100HP King: 100HP'
  end

    scenario "p1 can attack p2's hp" do
      srand(1)
      sign_in_and_play
      allow_any_instance_of(Attack).to receive(:rand) {10}
      click_button('Punch!')
      expect(page).to have_content "Law: 100HP King: 90HP"
    end

    scenario "p1 kills p2 and should see a lose mesage" do
      srand(1)
      sign_in_and_play
      allow_any_instance_of(Attack).to receive(:rand) {10}
      19.times {click_button('Punch!')}
      expect(page).to have_content "King loses the game!"
    end

    scenario "user trys to navigate to play after game over" do
      srand(1)
      sign_in_and_play
      allow_any_instance_of(Attack).to receive(:rand) {10}
      19.times {click_button('Punch!')}
      visit('/play')
      expect(page).to have_content "King loses the game!"
    end

    scenario "user trys to access game over before game is over" do
      sign_in_and_play
      visit('/game_over')
      expect(page).to have_content 'Law: 100HP King: 100HP'
    end

end
