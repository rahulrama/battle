feature 'End game' do
  scenario "when player 2's HP reaches 0 first" do
    sign_in_and_play
    11.times { attack_and_ok }
    expect(page).to have_content "Mittens lost"
  end
end
