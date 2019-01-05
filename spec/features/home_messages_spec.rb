RSpec.feature 'home screen messages' do
  
  context 'Creating' do
    let(:message_one){ 'message one' }
    let(:message_two){ 'message two' }
    let(:message_three){ 'message three' }
   
    it 'should save with a time stamp' do
      time = DateTime.now
      post_message
      expect(page).to have_content time
    end

    it 'it redirects user back to the index' do
      post_message
      expect(page.current_path).to eq('/')
    end

    it 'A user can submit many messages and see them all' do
      post_message(message_one)
      post_message(message_two)
      post_message(message_three)
      expect(page).to have_content message_one
      expect(page).to have_content message_two
      expect(page).to have_content message_three
    end

    it "Only the 20 first characters of the message are displayed" do
      post_message
      first('#messages-container .message p').text
      expect(first('#messages-container .message p').text.length <= 20).to be(true)
    end

  end

end

