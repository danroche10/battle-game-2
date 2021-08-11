# in spec/features/testing_infrastructure_spec.rb

feature 'Player form' do
  scenario 'expects players to fill in their names and submit' do
    visit('/')
    fill_in('player_1', with: "Dan")
    fill_in('player_2', with: "Ed")
    click_button('Submit')
    expect(page).to have_content "Dan is playing against Ed"
  end
end

feature 'See opponents hit points' do
  scenario 'Player 1 can see Player 2 hit points' do
    visit('/')
    fill_in('player_1', with: "Dan")
    fill_in('player_2', with: "Ed")
    click_button('Submit')
    expect(page).to have_content "Ed hit points: 10"
  end
end