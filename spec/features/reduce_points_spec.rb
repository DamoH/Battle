# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Reducing points' do
  scenario 'an attack reduceds P2s points by 10HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Dave attacked Mittens')
    expect(page).to have_content('Mittens now has 50HP')
  end
end
