def login
  visit('/')
  fill_in :name, with: "Bob"
  click_button "Log in"
end
