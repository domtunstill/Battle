def sign_in_and_play
  visit('/')
  select('Law', from: 'player_1')
  select('King', from: 'player_2')
  click_button "Submit"
end
