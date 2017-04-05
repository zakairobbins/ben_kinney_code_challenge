FactoryGirl.define do
	factory :comment do
		text 'some text'
		association :user
		association :post
	end
end
