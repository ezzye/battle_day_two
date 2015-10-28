
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them


feature 'Enter user names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :Player_one, with: 'Rafael'
    fill_in :Player_two, with: 'Ezzy'
    click_button 'Submit'
    expect(page).to have_content 'Player one: Rafael Vs Player two: Ezzy'
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
