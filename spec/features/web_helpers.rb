def sign_in_and_play
  visit '/'
  fill_in('player_one_name', :with => 'Kye')
  fill_in('player_two_name', :with => 'Simon')
  click_button 'Submit'
end

def sign_in_and_play_against_computer
  visit '/'
  fill_in('player_one_name', :with => 'Kye')
  click_button 'Play against computer'
end
