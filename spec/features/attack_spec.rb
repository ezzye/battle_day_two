feature 'Attack player' do
  background do
    sign_in_and_play
    find('.button').click
  end
  scenario 'displays attack confirmation' do
    expect(page).to have_content 'Rob attacks Ezzy'
  end
  scenario 'display reduced HP' do
    expect(page).to have_content 'Ezzy: 80HP'
  end
  scenario 'multiple attacks display reduced HP' do
    visit '/play'
    find('.button').click
    expect(page).to have_content 'Ezzy: 60HP'
  end
end
