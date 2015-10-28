def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Rob'
  fill_in :player2_name, with: 'Ezzy'
  click_button 'Submit'
end
