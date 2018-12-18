feature 'homepage' do
  scenario 'user sees welcoming message' do
    visit('/')
    expect(page).to have_content 'Welcome to Messaging World:'
  end

  scenario 'can submit message' do
    post_message
    expect(page).to have_content 'Hello'
  end

end
