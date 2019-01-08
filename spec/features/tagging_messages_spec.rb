RSpec.feature 'ability to tag messages' do

    let(:message){'hi im posting'}
    let(:tag){ 'barney'}

    it 'there should be a field that allows us to tag messages' do 
        visit '/'
        expect(page).to have_field('tag')
    end

    it ''do 
        visit('/')
        fill_in :content, with: message
        fill_in :tag, with: tag
        click_button 'Create'
        expect(page).to have_content(tag)
    end



end