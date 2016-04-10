require_relative "post.rb"

class Blog
	attr_reader :current_page, :posts_per_page, :posts_array, :latest_first
	def initialize
		@posts_array = []
		@current_page = 1
		@posts_per_page = 3
	end

	def add_post (single_post)
		@posts_array.push(single_post)
	end

	def publish_front_page
		# Page 1: posts 0..2
		# Page 2: posts 3..5
		# Page 3: posts 6..8
		first_post = (current_page-1)*posts_per_page
		last_post = (first_post+posts_per_page)-1
		page = first_post..last_post
			
			@posts_array[page].each do |item|
				if item.sponsored == true
					puts "****** #{item.title} ******"
				else
					puts item.title
				end
				puts "**************"
				puts item.content
				puts "----------------"
			end

		if @current_page > 1
			puts "< previous"
		end

		puts @current_page

		if@current_page < @posts_array.length/3.0
			puts "> next"
		end

	end

	def latest_posts
		@latest_first = @posts_array.sort { |post1, post2| post2.date <=> post1.date}
		@latest_first
	end

	def next_page
		
		command = ""

		while command != "exit" do

			command = gets.chomp

			if command == "next"
				@current_page = @current_page + 1
				current_page_content = publish_front_page
				puts current_page_content
			elsif command == "previous"
				@current_page = @current_page -1
				current_page_content = publish_front_page
				puts current_page_content
			elsif command != "exit" 
				puts "Command not found"
			end
		# puts "#{@posts_array.length/3} #{@posts_array.length%3}"

		# if @posts_array.length>3
		# 	gets.chomp
		# end
		end

	end

end

