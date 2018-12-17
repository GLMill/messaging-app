feature "enter name" do
  scenario "user fills his name" do
    visit('/')
    fill_in :name, with: "Bob"
    click_button "Log in"
    expect(page).to have_content("Bob")
  end
end
