
feature 'Hit Points' do
    scenario 'can be viewed on /play' do
      sign_in_and_play
      expect(page).to have_content('Obi: 100HP')
    end
end