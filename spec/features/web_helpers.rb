def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Antonio'
  fill_in :player_2_name, with: 'Nandhini'
  click_button 'Submit'
end
