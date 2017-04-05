FactoryGirl.define do
	factory :post do
		title 'a title'
		text 'some text'
		association :user
	end
end
