require 'spec_helper'

describe Comment do
	it 'has a valid factory' do
		expect(create(:comment)).to be_valid
	end

	it 'is invalid without text' do
		expect(build(:comment, text: nil)).to have(1).errors_on(:text)
	end

	it 'is invalid without a user_id' do
		expect(build(:comment, user_id: nil)).to have(1).errors_on(:user_id)
	end

	it 'is invalid without a post_id' do
		expect(build(:comment, post_id: nil)).to have(1).errors_on(:post_id)
	end

	it "returns it's author's name as a string" do
		comment = create(:comment)
		expect(comment.print_author_name).to eq 'Ada Lovelace'
	end
end
