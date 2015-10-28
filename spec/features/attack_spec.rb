feature 'Attack player' do
  scenario 'displays attack confirmation' do
    sign_in_and_play
    find('.button').click
    expect(page).to have_content 'Rob attacks Ezzy'
  end
end
