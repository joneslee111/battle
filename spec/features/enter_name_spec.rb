
=begin
feature "Checks if text is being displayed" do
  scenario 'shows text' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
=end

feature 'checks players have filled in their name' do
  scenario 'names filled in' do
    sign_in_and_play
    expect(page).to have_content 'Juan vs Obi'
  end
end
