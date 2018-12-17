feature 'homepage' do
  scenario 'user sees message history' do
    visit('/')
    expect(page).to have_content 'Welcome to Messaging World\n Recent messages:'
  end

  scenario 'user can submit message' do
    visit('/')
    fill_in :message, with: 'Hello'
    click_button 'Submit'
    expect(page).to have_content 'Hello'
  end
end
