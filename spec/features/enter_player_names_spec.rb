
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them


feature 'Enter user names' do
  background(:each) do
    visit('/')
    fill_in :Player_one, with: 'Rob'
    fill_in :Player_two, with: 'Ezzy'
    click_button 'Submit'
  end

  scenario 'display names' do
    expect(page).to have_content 'Player one: Rob Vs Player two: Ezzy'
  end
  scenario 'display hit points' do
    expect(page).to have_content 'Ezzy: 100HP'
  end
end





# goto form

# visit('http://localhost:4567/')

# fill in player one name

# fill_in('Player_one', :with => 'Rafael')

# fill in played two name

# fill_in('Player_two', :with => 'Ezzy')

# submit form

# click_button('Submit')

# see names on screen
