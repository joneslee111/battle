feature 'Attacking player' do
    scenario 'Attacks player' do
        sign_in_and_play
        click_link 'Hit Player'
        expect(page).to have_content 'Obi hit Juan'
    end
end