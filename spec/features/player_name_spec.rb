require_relative '../../app'

RSpec.feature "Players can submit their names", :type => :feature do
  scenario "Player 1 can submit their name" do
    visit '/'
    fill_in('player_one_name', :with => 'Charlotte')
    fill_in('player_two_name', :with => 'Simon')
    click_button 'Submit'
    expect(page).to have_content 'Charlotte vs. Simon'
  end
end
