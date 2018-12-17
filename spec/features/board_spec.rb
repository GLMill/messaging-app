feature 'new message' do
  scenario 'user creates a new message' do
    login
    click_link "New"
    expect(page).to have_content 'Create a new message:'
  end

  scenario 'user view history messages' do
    login
    click_link "View"
    expect(page).to have_content 'History:'
  end
end
