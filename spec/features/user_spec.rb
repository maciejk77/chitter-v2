# require 'user'
# require 'spec_helper'

# describe User do
#   context 'Signing up to the user account' do
#     it 'As a new user I register on the website' do
#       expect { sign_up }.to change(User, :count).by(1)
#       expect(User.first.email).to eq('mk@yahoo.com')
#     end

#     def sign_up(email = 'mk@yahoo.com', password = 'oranges!')
#       visit '/users/new'
#       expect(page.status_code).to eq(200)
#       fill_in :email, with: email
#       fill_in :password, with: password
#       click_button 'Sign up'
#     end
#   end
# end