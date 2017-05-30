def sign_in_and_play
  visit '/'
  click_button('Play 2-player game')
  fill_in('player_one_name', :with => 'Kye')
  fill_in('player_two_name', :with => 'Simon')
  click_button('Submit')
end

def sign_in_and_play_against_computer
  visit '/'
  click_button('Play against computer')
  fill_in('player_one_name', :with => 'Kye')
  click_button('Submit')
end
