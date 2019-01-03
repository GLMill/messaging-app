RSpec.feature 'single view should allow us to edit a post' do 
    before {
        post_message
        view_single_message
    }

    it 'should have an edit button' do 
        expect(page).to have_selector(:button, 'edit')
    end 
   
    context 'clicking the edit button' do 
        it 'clicking the edit button should display a form' do 
            click_button('edit')
            expect(page).to have_css('form')
        end
    end
end 