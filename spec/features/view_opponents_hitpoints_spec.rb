feature 'View opponents hit points' do
  scenario "User can see opponents hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end
