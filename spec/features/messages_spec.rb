feature 'homepage' do
  let(:long_message){ 'i could have used not to have as opposed to what i did'}
  scenario 'user sees welcoming message' do
    visit('/')
    expect(page).to have_content 'Welcome to Messaging World:'
  end

  scenario 'can submit message' do
    post_message(long_message)
    expect(find('.message_thumbnail .message').text.length <= 20).to be(true)
  end

end
