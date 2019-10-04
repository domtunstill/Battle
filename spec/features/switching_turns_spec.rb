feature 'Switching turns' do

    scenario "p2 can attack p1's hp on thier turn" do
      sign_in_and_play
      allow_any_instance_of(Attack).to receive(:rand) {10}
      click_button('Punch!')
      click_button('Punch!')
      expect(page).to have_content "Law: 90HP King: 90HP"
    end

end
