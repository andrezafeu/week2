require_relative("../lib/blog.rb")

RSpec.describe Blog do
	# let(:blog) {Blog.new}
	# let(:post1) {post1 = Post.new("First post", Time.new.strftime("18 / Nov / 16"), "This is my first post", true)}
	# let(:post2) {post2 = Post.new("Second post", Time.new.strftime("25 / Nov / 16"), "This is my second post", true)}
		# blog.add_post(post1)
		# blog.add_post(post2)

	before :each do
		@blog = Blog.new
		@post1 = Post.new("First post", Time.new.strftime("18 / Nov / 16"), "This is my first post", true)
		@post2 = Post.new("Second post", Time.new.strftime("25 / Nov / 16"), "This is my second post", true)
		@blog.add_post(@post1)
		@blog.add_post(@post2)
		@newblog = Blog.new
	end


	describe "What the homepage does" do

		it "returns list of posts" do
			#blog.posts_array is only possible because of the attr_reader in the blog class.
			#otherwise it would be necessary to create a new method (def) with the content @posts_array
			expect(@newblog.posts_array).to eq([])
		end

		it "checks if the post has a title" do
			expect(@post1.title).not_to eq(nil)
		end

		it "checks if the post has a date" do
			expect(@post1.date).not_to eq(nil)
		end

		it "checks if the post has a content" do
			expect(@post1.content).not_to eq(nil)
		end

		it "checks if the post is sponsored" do
			expect(@post1.content).not_to eq(true)
		end

		it "checks if the first post shown is the most recent" do
			expect(@blog.latest_posts[0].title).to eq("Second post")
		end

	end

end