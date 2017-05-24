require_relative '../../app'

# comment 
RSpec.feature "testing infrastructure", :type => :feature do
  scenario "Can see infrastructure working on home page" do
    visit "/"
    expect(page).to have_text("Testing infrastructure working!")
  end
end
