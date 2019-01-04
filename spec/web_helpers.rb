
def post_message(msg = 'Hello, how are you today ? Do you want to grab a drink tonight ?')
  visit('/')
  fill_in :content, with: msg
  click_button 'Create'
end

def view_single_message
  first('#messages-container div').click_link('view')
end

def update_a_message(msg)
  click_button('edit')
  fill_in :update, with: msg
  click_button('Update')
end
