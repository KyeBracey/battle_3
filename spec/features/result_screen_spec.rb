
feature 'Result Screen' do
  scenario 'player 1 wins and sees a victory screen' do
    sign_in_and_play
    19.times do
      click_button('ATTACK!')
      click_button('END TURN!')
    end
    expect(page).to have_content "KYE WINS! FATALITY!"
  end
  scenario 'player 2 loses and has their face rubbed in it' do
    sign_in_and_play
    19.times do
      click_button('ATTACK!')
      click_button('END TURN!')
    end
    expect(page).to have_content "Simon loses... you suck"
  end
end
