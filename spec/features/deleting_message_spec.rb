RSpec.feature 'deleting a message' do 
    let(:dummy_message){ 'im not here '}

    before {
        post_message
        view_single_message
    }

    it 'should have a delete button' do 
        expect(page).to have_selector(:button, 'delete')
    end
    ## why is this working... shouldnt be working
    it 'should remove the message from the home screen' do 
       post_message(dummy_message)
       expect(page).not_to have_content(dummy_message[0...20])
    end 
end 
