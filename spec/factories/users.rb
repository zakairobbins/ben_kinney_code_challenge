FactoryGirl.define do
	factory :user do
		first_name 'Ada'
		last_name 'Lovelace'
		sequence(:email) { |n| "ada#{n}@email.com"}
		password 'password'
	end
end
