RSpec.feature 'deleting a message' do 
<<<<<<< HEAD
    let(:dummy_message){ 'im not here '}
=======
>>>>>>> cf1df1f4e33fe09e37b36939dc57cbf11b81989e

    before {
        post_message
        view_single_message
    }

    it 'should have a delete button' do 
        expect(page).to have_selector(:button, 'delete')
    end

    it 'should remove the message from the home screen' do 
<<<<<<< HEAD
       update_a_message(dummy_message)
       view_single_message
       expect(page).not_to have_content(dummy_message)
=======
      
>>>>>>> cf1df1f4e33fe09e37b36939dc57cbf11b81989e
    end 
end 
