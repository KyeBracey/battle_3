require_relative '../../app'

RSpec.feature "Players can submit their names", :type => :feature do
  scenario "Player 1 can submit their name" do
    visit '/'
    fill_in('Player One', :with => 'Charlotte')
  end
  scenario "Player 2 can submit their name" do
    visit '/'
    fill_in('Player Two', :with => 'Simon')
  end
end
