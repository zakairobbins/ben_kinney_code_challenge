require 'spec_helper'

describe User do
	it 'has a valid factory' do
		expect(create(:user)).to be_valid
	end

	it 'is invalid without a first_name' do
		expect(build(:user, first_name: nil)).to have(1).errors_on(:first_name)
	end
	it 'is invalid without a last_name' do
		expect(build(:user, last_name: nil)).to have(1).errors_on(:last_name)
	end

	it 'is invalid without an email' do
		expect(build(:user, email: nil)).to have(1).errors_on(:email)
	end

	it 'is invalid without a password' do
		expect(build(:user, password: nil)).to have(1).errors_on(:password)
	end

	it 'is invalid with a duplicate email address' do
		create(:user, email: 'ada@email.com')
		expect(build(:user, email: 'ada@email.com')).to have(1).errors_on(:email)
	end
end
