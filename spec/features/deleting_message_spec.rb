RSpec.feature 'deleting a message' do 
    let(:dummy_message){ 'im not here '}
    let(:start_url){ 'http://www.example.com/' }

    before {
        post_message(dummy_message)
        view_single_message
    }

    it 'should have a delete button' do 
        expect(page).to have_selector(:link, 'delete')
    end

    it 'should take us back to the home screen' do 
        click_link('delete')
        expect(page.current_url).to eq(start_url)
    end
   
    ## this is passing but shouldnt 
    it 'should remove the message from the home screen' do 
       click_link('delete')
       visit '/'
       dummy_message[0...20]
       expect(page).not_to have_content(dummy_message[0...20])
    end 
end 
