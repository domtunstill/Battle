feature 'Testing points' do

  scenario "player 1 can see players 2's hit point" do
    sign_in_and_play
    expect(page).to have_content 'Brad: 100HP Dom: 100HP'
  end

    scenario "p1 can attack p2's hp" do
      sign_in_and_play
      click_button('Attack!')
      expect(page).to have_content "Brad: 100HP Dom: 90HP"
    end

end
