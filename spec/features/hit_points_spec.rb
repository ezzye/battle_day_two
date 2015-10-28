feature 'Display hit points' do
  scenario 'displays player 2\'s hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Ezzy: 100HP'
  end
end
