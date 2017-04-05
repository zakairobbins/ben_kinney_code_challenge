require 'spec_helper'

describe Post do
	it 'has a valid factory' do
		expect(create(:post)).to be_valid
	end

	it 'is invalid without a title' do
		expect(build(:post, title: nil)).to have(1).errors_on(:title)
	end

	it 'is invalid without text' do
		expect(build(:post, text: nil)).to have(1).errors_on(:text)
	end

	it 'is invalid without a user_id' do
		expect(build(:post, user_id: nil)).to have(1).errors_on(:user_id)
	end

	it "returns it's author's name as a string" do
		post = create(:post)
		expect(post.print_author_name).to eq 'Ada Lovelace'
	end
end
