feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Pizza Spy'
    fill_in :player_2_name, with: 'Delegation Raptor'
    click_button 'Submit'
    expect(page).to have_content 'Pizza Spy vs. Delegation Raptor'  
  end
end
