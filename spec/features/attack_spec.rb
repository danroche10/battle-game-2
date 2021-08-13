
feature 'Attack a player' do

  before do
    sign_in_and_play
    click_button('ATTACK!')
  end

  feature "that shows who has just been attacked" do
    scenario 'P1 can attack P2 and get confirmation' do
      expect(page).to have_content "Dan attacked Ed"
    end

    scenario 'P2 can attack P1 and get confirmation' do
      click_button('Back')
      click_button('ATTACK!')
      expect(page).to have_content "Ed attacked Dan"
    end
  end

  # scenario 'attack reduces hit points by 10' do
  #   sign_in_and_play
  #   expect(page).to have_content "hit points: 90"
  # end

end