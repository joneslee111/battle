def sign_in_and_play
    visit('/')
    fill_in :p1_name, with: 'Juan'
    fill_in :p2_name, with: 'Obi'
    click_button('Submit')
end



