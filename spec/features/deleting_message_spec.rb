RSpec.feature 'deleting a message' do 

    before {
        post_message
        view_single_message
    }

    it 'should have a delete button' do 
        expect(page).to have_selector(:button, 'delete')
    end

    it 'should remove the message from the home screen' do 
      
    end 
end 
