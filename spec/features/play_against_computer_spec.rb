require_relative '../../app'

feature 'Playing against a computerised opponent' do
  scenario 'User can start a game against the computer' do
    visit('/')
    fill_in('player_one_name', :with => 'Kye')
  end

  scenario 'User can play a game against the computer' do
    sign_in_and_play_against_computer
    click_button('ATTACK!')
    click_button('END TURN!')
    expect(page).to have_content('Computer attacked you! Beep boop.')
  end

end
