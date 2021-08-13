# in spec/features/testing_infrastructure_spec.rb

feature 'Player form' do
  scenario 'expects players to fill in their names and submit' do
    sign_in_and_play
    expect(page).to have_content "Dan vs Ed"
  end
end