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
        let(:editted_message){ 'christams trees, coffee and a dog' }

        before {
            click_button('edit')
        }

        it 'should display form on button click' do 
            expect(page).to have_selector('#edit_form', visible:true)  
        end

        it 'should send message to update route' do 
            fill_in :update, with: editted_message
            click_button('Update')
            expect(page).to have_content(editted_message)
        end

        it 'the updated messages should update its created at time' do 
            fill_in :update, with: editted_message
            click_button('Update')
            expect(page).to have_content(editted_message)
        end        
    end
end 