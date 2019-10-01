feature 'Testing names' do
  scenario '2 players can input their names' do
    visit('/')

    fill_in "player_1", :with => "Brad"
    fill_in "player_2", :with => "Dom"
    click_button "Submit"

    expect(page).to have_content 'Brad vs Dom'
  end
end
