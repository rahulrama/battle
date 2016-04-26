feature "Start game" do
  scenario "User enters name" do
    visit ('/') 
    fill_in :player_1, :with => 'Player 1'
    fill_in :player_2, :with => 'Player 2'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 vs Player 2'
  end
end