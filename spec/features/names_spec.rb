feature 'fill in players name' do
  scenario 'Can enter players name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Antonio vs. Nandhini'
  end

  scenario " Displays Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Antonio vs. Nandhini HP: 100'
  end
end
