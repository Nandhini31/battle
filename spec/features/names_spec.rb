feature 'fill in players name' do
  scenario 'Can enter players name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Antonio vs Nandhini'
  end

  scenario " Displays Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Antonio vs Nandhini HP: 100'
  end

  scenario "Attack Player 2 and get confirmation" do
    sign_in_and_play
    click_button'attack'
    expect(page).to have_content 'Antonio attacks Nandhini'
  end

end
