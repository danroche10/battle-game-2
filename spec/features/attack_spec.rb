
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

  feature "shows victim's hit points" do
    scenario 'P1 attacks, can see P2 hit points' do
      expect(page).to have_content "Ed's hit points: 90"
    end

    scenario 'P2 attacks, can see P1 hit points' do
      click_button('Back')
      click_button('ATTACK!')
      expect(page).to have_content "Dan's hit points: 90"
    end
  end
end