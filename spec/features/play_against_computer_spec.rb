require_relative '../../app'

feature 'Playing against a computerised opponent' do
  scenario 'User clicks "Play against computer" button and plays a single player game' do
    sign_in_and_play_against_computer
    click_button('ATTACK!')
    click_button('END TURN!')
    expect(page).to have_content('Computer attacked you!')
  end

end
