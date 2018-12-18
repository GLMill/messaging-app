feature "single message" do
  scenario "when click on a single message, should be taken to a single message view" do
    post_message
    click_link "View"
    expect(page).to have_content('route working')
  end
end
