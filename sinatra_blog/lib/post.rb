require 'date'

class Post
	attr_reader :title, :content, :sponsored, :date
	def initialize(title, date, content, sponsored)
		@title = title
		@date = date
		@content = content
		@sponsored = sponsored

	end
end