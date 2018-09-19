# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'attacking player2' do
  scenario 'getting confirm from attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content('Dave attacked Mittens')
  end
end
