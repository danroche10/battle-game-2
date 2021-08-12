
feature 'Attack a player' do

  scenario 'P1 can attack P2 and get confirmation' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content "Dan attacked Ed"
  end

  scenario 'attack reduces hit points by 10' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page).to have_content "hit points: 90"
  end

end