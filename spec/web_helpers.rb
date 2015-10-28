def sign_in_and_play
  visit('/')
  fill_in :Player_one, with: 'Rob'
  fill_in :Player_two, with: 'Ezzy'
  click_button 'Submit'
end
