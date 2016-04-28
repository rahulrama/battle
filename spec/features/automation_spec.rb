feature "allows computerised opponent" do
	
	scenario "signing up against a computer" do
		visit('/')
		fill_in :player_1_name, :with => 'Dave'
		click_button('Play against machine')
		expect(page).to have_content("Dave vs Machine")
	end

	scenario "attacking a computer" do
		visit('/')
		fill_in :player_1_name, :with => 'Dave'
		click_button('Play against machine')
		attack_and_ok
		expect(page).to have_content("Dave was attacked")
	end

end