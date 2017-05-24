def sign_in_and_play
  visit '/'
  fill_in('player_one_name', :with => 'Charlotte')
  fill_in('player_two_name', :with => 'Simon')
  click_button 'Submit'
end
