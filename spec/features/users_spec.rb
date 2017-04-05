require 'spec_helper'

feature 'User management' do
	scenario 'adds a new user' do
		visit root_path
		expect {
			click_link 'Sign up'
			fill_in 'new-user-email', with: 'test@email.com'
			fill_in 'new-user-firstname', with: 'Ada'
			fill_in 'new-user-lastname', with: 'Lovelace'
			fill_in 'new-user-password', with: 'password'
			fill_in 'new-user-password-confirmation', with: 'password'
			click_button 'new-user-submit'
		}.to change(User, :count).by(1)
	end
end
