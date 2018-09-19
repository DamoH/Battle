def sign_in_and_play
  visit('/')
  fill_in :player_one, with: 'Dave'
  fill_in :player_two, with: 'Mittens'
  click_button 'Submit'
end
