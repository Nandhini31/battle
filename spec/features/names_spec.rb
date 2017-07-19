feature 'fill in players name' do
  scenario 'Can enter players name and see it on the screen' do
    visit('/')
    fill_in :player_1_name, with: 'Antonio'
    fill_in :player_2_name, with: 'Nandhini'
    click_button 'Submit'
    expect(page).to have_content 'Antonio vs. Nandhini'
  end

  scenario " Displays Player 2's hit points" do
    visit('/')
    fill_in :player_1_name, with: 'Antonio'
    fill_in :player_2_name, with: 'Nandhini'
    expect(page).to have_content 'Antonio vs. Nandhini HP: 100'
  end
end
