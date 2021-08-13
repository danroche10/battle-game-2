feature 'See opponents hit points' do

  scenario 'can see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content "Dan hit points: 100"
  end

  scenario 'Can see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Ed hit points: 100"
  end

  scenario 'can see Player 1 hit points after attack' do
    sign_in_and_play
    attack_complete
    expect(page).to have_content "Dan hit points: 90"
  end

  scenario 'Can see Player 2 hit points after attack' do
    sign_in_and_play
    2.times { attack_complete }
    expect(page).to have_content "Ed hit points: 90"
  end



  scenario "Can see who's turn it is" do
    sign_in_and_play
    expect(page).to have_content "Dan's turn"
  end

  scenario "Can see who's turn it is after attack" do
    sign_in_and_play
    attack_complete
    expect(page).to have_content "Ed's turn'"
  end

  scenario "Can attack other player and get confirmation" do

  end

end