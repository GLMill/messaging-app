RSpec.feature 'ability to tag messages' do

    let(:message){'hi im posting'}
    let(:tag){ 'barney'}

    it 'there should be a field that allows us to tag messages' do 
        visit '/'
        expect(page).to have_field('tag')
    end

    it 'should display tags'do 
        post_message(message, tag)
        expect(page).to have_content(tag)
    end

    it 'should not allow duplicate tags to be saved' do 
        post_message(message, tag)
        post_message(message, tag)
    end 



end