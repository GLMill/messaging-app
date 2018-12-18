feature 'Homepage' do
  scenario 'visits homepage' do
    visit('/')
    expect(page).to have_content 'Welcome to Messaging World'
    expect(page).to have_content 'Recent messages:'
    expect(page).to have_content 'Enter message'
  end

  scenario 'can submit message' do
    visit('/')
    fill_in :message, with: 'Hello'
    click_button 'Submit'
    expect(page).to have_content 'Hello'
  end

end
