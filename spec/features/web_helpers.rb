def sign_in_and_play
  visit('/')
  fill_in('player_1', with: "Dan")
  fill_in('player_2', with: "Ed")
  click_button('Submit')
end

def attack_complete
  click_button("ATTACK!")
  click_button("Back")
end