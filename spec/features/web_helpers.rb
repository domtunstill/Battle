def sign_in_and_play
  visit('/')
  fill_in "player_1", :with => "Brad"
  fill_in "player_2", :with => "Dom"
  click_button "Submit"
end
