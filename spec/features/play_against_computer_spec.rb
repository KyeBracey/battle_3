require_relative '../../app'

feature 'Playing against a computerised opponent' do

  before(:each) do
    srand(1339)
  end

  scenario 'User can start a game against the computer' do
    visit('/')
    click_button('Play against computer')
    fill_in('player_one_name', :with => 'Kye')
    click_button('Submit')
    expect(page).to have_content('Kye vs. Computer')
  end

  scenario 'User can play a game against the computer' do
    sign_in_and_play_against_computer
    click_button('ATTACK!')
    click_button('END TURN!')
    expect(page).to have_content('Computer attacked you! Beep boop.')
  end

  scenario 'App redirects to results screen as soon as player wins' do
    sign_in_and_play_against_computer
    16.times do
      click_button('ATTACK!')
      click_button('END TURN!')
      click_button('END TURN!')
    end
    click_button('ATTACK!')
    click_button('END TURN!')
    expect(page).to have_content('KYE WINS!')
  end

end


# This isn't working because we are being sent down the 2-player routes
# Do we have to have two completely separate paths?
