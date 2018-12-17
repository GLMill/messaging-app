feature "enter name" do
  scenario "user fills his name" do
    login
    expect(page).to have_content("Bob")
  end
end
