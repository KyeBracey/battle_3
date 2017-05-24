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
