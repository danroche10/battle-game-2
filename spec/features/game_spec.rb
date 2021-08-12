feature Game do

  scenario 'swtiches turn after attack' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('Back')
    expect(page).to have_content("It is Ed's turn")
  end
end