feature 'Attacking player' do
    scenario 'Attacks player' do
        sign_in_and_play
        click_link 'Hit Player'
        expect(page).to have_content 'Juan hit Obi'
    end
    scenario 'player loses hit points' do
      sign_in_and_play
      click_link 'Hit Player'
      visit("/play")
      expect(page).to have_content('Obi: 90HP')
    end
end
