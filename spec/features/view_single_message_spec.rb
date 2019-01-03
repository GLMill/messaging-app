RSpec.feature 'should be able to let you click on one message and view it seperatley' do 
    let(:dummy_text){ 'hi im a dummy ur not' }
    let(:dummy_message){ double(dummy_text)}
    
    #these are failing as need to reset the db

    # before {
    #     ## failing as need teardown
    #     allow(dummy_message).to receive(:id).and_return(1) 
    #     post_message(dummy_text)
    #     first('#messages-container div').click_link('view')
    # }

    # it 'will take you to the correct file path' do
    #     expect(page.current_path).to eq("/messages/#{dummy_message.id}")
    # end
    
    # it 'will display the correct message' do 
    #     expect(page).to have_content(dummy_message)
    # end 
end 
