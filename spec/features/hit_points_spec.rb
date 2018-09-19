# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'see player2 hit points' do
  scenario 'comparing scores' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end
