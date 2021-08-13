feature 'features tests for play page' do

  before do
    sign_in_and_play
  end

  feature 'confirm who is playing' do
    scenario 'can see who is playing after an attack' do
      attack_complete
      expect(page).to have_content "Dan vs Ed"
    end
  end

  feature 'player hit points' do

    scenario 'can see Player 1 hit points' do
      expect(page).to have_content "Dan hit points: 100"
    end

    scenario 'Can see Player 2 hit points' do
      expect(page).to have_content "Ed hit points: 100"
    end

    scenario 'can see Player 2 hit points after attack' do
      attack_complete
      expect(page).to have_content "Ed hit points: 90"
    end

    scenario 'Can see Player 1 hit points after attack' do
      2.times { attack_complete }
      expect(page).to have_content "Dan hit points: 90"
    end

  end

  feature 'showing whose turn it is correctly' do

    scenario "Can see who's turn it is" do
      expect(page).to have_content "Dan's turn"
    end

    scenario "Can see who's turn it is after attack" do
      attack_complete
      expect(page).to have_content "Ed's turn"
    end

  end

  feature "attack button brings us to attack page which confirms attack" do
    scenario "Can attack other player and get confirmation" do
      click_button("ATTACK!")
      expect(page).to have_content "Dan attacked Ed"
    end
  end

end