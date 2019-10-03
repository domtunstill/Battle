def sign_in_and_play
  visit('/')
  # find('#player_1Select').find('#Law').select_option
  # select('#Law', from: '#player_1Select')
  # fill_in "player_1", :with => "Brad"
  # fill_in "player_2", :with => "Dom"
  click_button "Submit"
end
