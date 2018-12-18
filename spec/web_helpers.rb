def post_message
  visit('/')
  fill_in :content, with: 'Hello'
  click_button 'Submit'
end
