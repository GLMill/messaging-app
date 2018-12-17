feature "enter name" do
  scenario "user fills his name" do
    login
    expect(page).to have_content("Welcome Bob")
  end
end
