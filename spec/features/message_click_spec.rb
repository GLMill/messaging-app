feature "single message" do
  scenario "when click on a single message, should be taken to a single message view" do
    post_message
    # click_link "message.content[0..20]"
    # expect(page).to have_content(DEFAULT_MESSAGE)
  end

end
