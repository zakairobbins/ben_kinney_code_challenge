module AuthorToString
	extend ActiveSupport::Concern

	def print_author_name
		name_string = self.user.first_name + ' ' + self.user.last_name
		p name_string
	end
end
