feature 'See opponents hit points' do
  
  scenario 'Player 1 can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Ed hit points: 10"
  end

end