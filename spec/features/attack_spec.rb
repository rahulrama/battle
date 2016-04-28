feature "attack" do
  scenario "and receive confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens was attacked'
  end

  scenario "and reduce Player 2 HP by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario "on second attack player 1 gets attacked" do
    sign_in_and_play
    attack_and_ok
    click_button 'Attack'
    expect(page).to have_content 'Dave was attacked'
  end

  scenario "and reduce player 1 HP by 10" do
    sign_in_and_play
    attack_and_ok
    click_button 'Attack'
    expect(page).to have_content 'Dave: 50HP'
  end
end
