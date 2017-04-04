class Comment < ActiveRecord::Base
	include AuthorToString
	validates :text, :user_id, :post_id, presence: true
	belongs_to :user
	belongs_to :post

	# def print_author_name
	# 	name_string = self.user.first_name + ' ' + self.user.last_name
	# 	p name_string
	# end
end
