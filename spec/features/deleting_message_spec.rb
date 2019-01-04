RSpec.feature 'deleting a message' do 
    let(:dummy_message){ 'im not here '}

    before {
        post_message
        view_single_message
    }

    it 'should have a delete button' do 
        expect(page).to have_selector(:button, 'delete')
    end

    it 'should remove the message from the home screen' do 
       update_a_message(dummy_message)
       view_single_message
       expect(page).not_to have_content(dummy_message)
    end 
end 
