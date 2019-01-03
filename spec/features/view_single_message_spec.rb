RSpec.feature 'should be able to let you click on one message and view it seperatley' do 
    let(:dummy_message){ double('hi im a dummy ur not')}

    before {
        ## failing as need teardown
        allow(dummy_message).to receive(:id).and_return(1) 
        post_message(dummy_message)
        first('#messages-container div').click_link('view')
    }

    it 'will take you to the correct file path' do
        expect(page.current_path).to eq("/messages/#{dummy_message.id}")
    end
    
    it 'will display the correct message' do 
        expect(page).to have_content(dummy_message)
    end 
end 
