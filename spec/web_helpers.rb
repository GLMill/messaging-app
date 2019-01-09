
def post_message(msg = 'default message', tag = '')
  visit('/')
  fill_in :content, with: msg
  fill_in :tag, with: tag
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
