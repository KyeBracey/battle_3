require 'game'

feature 'Switching turns' do
  scenario 'Switches to player 2 after player 1 attacks' do
    sign_in_and_play
    click_button('ATTACK!')
    click_button('END TURN!')
    click_button('ATTACK!')
    expect(page).to have_content('You attacked Kye!')
  end
end
