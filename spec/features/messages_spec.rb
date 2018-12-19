feature "homepage" do
  scenario "user sees welcoming message" do
    visit('/')
    expect(page).to have_content "Welcome to Messaging World:"
  end

  scenario "Only the 20 first characters of the message are displayed" do
    post_message
    expect(page).to have_content("Hello, how are you t")
  end
end
