DEFAULT_MESSAGE = 'Hello'
def post_message(msg = DEFAULT_MESSAGE)
  visit('/')
  fill_in :content, with: msg
  click_button 'Submit'
end
