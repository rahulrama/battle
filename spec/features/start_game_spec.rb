feature "Start game" do
  scenario "User enters name" do
    sign_in_and_play
    expect(page).to have_content 'Player 1 vs Player 2'
  end
end
