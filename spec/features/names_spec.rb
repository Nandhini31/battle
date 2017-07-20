feature 'Game' do

  scenario 'Can enter players name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Antonio vs Nandhini'
  end

  scenario 'Can start the game and see whose turn is it' do
    sign_in_and_play
    expect(page).to have_content "Antonio's turn:"
  end

  scenario "Displays Player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Antonio 100/100'
  end

  scenario "Displays Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Nandhini 100/100'
  end

  scenario "Attack Player 2 and get confirmation" do
    sign_in_and_play
    click_button'attack'
    expect(page).to have_content 'Antonio attacks Nandhini'
  end

  scenario "Attack reduces player 2's hitpoints" do
    sign_in_and_play
    click_button'attack'
    click_button'Ok'
    expect(page).to have_content ' Nandhini 90/100'
  end

  scenario "Attack switches the turns" do
    sign_in_and_play
    click_button'attack'
    click_button'Ok'
    expect(page).to have_content "Nandhini's turn:"
    click_button'attack'
    click_button'Ok'
    expect(page).to have_content "Antonio's turn:"
  end

  scenario "Player 2 attacks player 1 and gets confirmation" do
    sign_in_and_play
    click_button'attack'
    click_button'Ok'
    click_button'attack'
    expect(page).to have_content 'Nandhini attacks Antonio'
  end

  scenario "Player 2 get a Lose message" do
    sign_in_and_play
    19.times{
        click_button'attack'
        click_button'Ok'
    }
    expect(page).to have_content 'Nandhini haha, You Lose!'
  end
end
