RSpec.feature 'single view should allow us to edit a post' do 
    before {
        post_message
        view_single_message
    }

    it 'should have an edit button' do 
        expect(page).to have_selector(:button, 'edit')
    end 

    it 'form should be hidden on arrival to page' do 
        expect(page).to have_selector('#edit_form', visible:false)
    end
   
    context 'clicking the edit button' do 
        before {
            click_button('edit')
        }
        
        it 'should display form on button click' do 
        end
    end
end 