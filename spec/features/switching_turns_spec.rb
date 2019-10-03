feature 'Switching turns' do

    scenario "p2 can attack p1's hp on thier turn" do
      sign_in_and_play
      allow_any_instance_of(Player).to receive(:rand) {10}
      click_button('Attack!')
      click_button('Attack!')
      expect(page).to have_content "King: 90HP King: 90HP"
    end

end
