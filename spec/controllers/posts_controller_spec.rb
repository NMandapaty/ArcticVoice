require 'rails_helper'
require 'capybara/rspec'



RSpec.describe PostsController, type: :controller do
	before(:each) do
	  @post =  FactoryGirl.create(:post)
	end

	describe "GET show" do
		before(:each) do
		  @post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
		end

		it "Expect to see the #show view" do
		get :show, :id => @post.id
		expect(response).to render_template(:show)
		end

		it "Checking to see if the post exists and is viewable" do
		  get :show, :id => @post.id
		  expect(@post.title).to eq "Global Warnming is bad!"
		end
	end

	describe "GET index" do
		before(:each) do
		  @post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
		end

		it 'get all posts' do
			get :index
			expect(Post.count).to eq(2)
		end

		it 'set up a new post' do
			get :new
			expect(Post.count).to eq(2)
		end
	end

	describe 'POST #create' do
		context 'Test with valid attributes' do
			it 'Create the post' do
				get :create, :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
				redirect_to Post
			end

			it 'The user should see the post page after succesfully creating a valid new post' do
				post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
				expect(response.status).to eq(200)
			end
		end

		context 'Test with invalid attributes' do
			it 'Do not create the post' do
			post = Post.create :title => nil, :body => nil
			expect(Post.count).to eq(1)
			end

			it 'User should be shown the New Post page again' do
				post = Post.create :title => nil, :body => nil
				redirect_to new_post_path
			end
		end
	end

	describe 'POST #update' do
		it 'Create the post' do
			post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
			post.save!
			expect(Post.count).to eq(2)	
		end
	end

	# describe "PUT update/:id" do
	#   let(:attr) do 
	#     { :title => 'Global Warnming!', :body => 'Global warming is pretty bad here', :id => @post.id}
	#   end

	#   it 'update the post!' do
	#   	@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
	# 	sign_in @user
	# 	put :update, {:id => @post.id, :post => attr}
	# 	#expect(response).to redirect_to(@post.id)
	# 	# expect(@post.title).to eql attr[:title]
	# 	# expect(@post.body).to eql attr[:body]
	#   end

	# end


	describe "PUT update/:id" do
	  let(:attr) do 
	    { :title => 'new title', :body => 'new content' }
	  end

	  before(:each) do
	  	@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
		sign_in @user
	    put :update, :id => @post.id, :post => attr
	    @post.reload
	  end

	  it { expect(response).to redirect_to(@post) }
	  it { expect(@post.title).to eql attr[:title] }
	  it { expect(@post.body).to eql attr[:body] }
	end

	describe 'POST #delete' do
		it 'Delete a new post' do
			post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
			expect(Post.count).to eq(2)	
			post.destroy
			expect(Post.count).to eq(1)	
		end
	end

	describe 'Get #search' do
		it 'Search for a new post' do
			@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
			sign_in @user
			post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
			expect(Post.count).to eq(2)	
			get :search_posts, :search_string => "Global warming"
			expect(response).to render_template(:index)
		end
		it 'Search for a new post' do
			@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
			sign_in @user
			post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
			expect(Post.count).to eq(2)	
			get :search_posts
			expect(response).to render_template(:index)
		end
	end
end
