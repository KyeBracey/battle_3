require_relative '../../app'

feature "Players can submit their names", :type => :feature do
  scenario "Player 1 can submit their name" do
    sign_in_and_play()
    expect(page).to have_content 'Charlotte vs. Simon'
  end
end

feature "Players can see hit points", :type => :feature do
  scenario "Can see player hit points" do
    sign_in_and_play()
    expect(page).to have_content 'Charlotte HP: 100'
    expect(page).to have_content 'Simon HP: 100'
  end
end

  feature "Player 1 can attack Player 2", :type => :feature do
    scenario "Can reduce Player 2's hit points" do
      sign_in_and_play()
      click_button('ATTACK!')
      expect(page).to have_content 'You attacked Simon!!'
    end
  end
