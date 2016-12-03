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

		let(:attr) do 
		    { :title => 'new title', :body => 'new content' }
		end

		before(:each) do
		  @post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
		end

		it 'get all posts' do
			get :index
			expect(Post.count).to eq(2)
		end


		it 'set up a new post' do

			get :new, :post => attr
			expect(Post.count).to eq(2)
		end
	end

	describe 'GET #new' do
		before(:each) do 
			@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
			sign_in @user
		end
	    it "requires login" do
	      get :new
	      expect(response.status).to eq(200) 
	    end
  	end

	describe 'POST #create' do
		before(:each) do 
			@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
			sign_in @user
		end
		context 'Test with valid attributes' do
			let(:attr) do 
			{ :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic' }
			end
				  

			it 'Create the post' do
				get :create, :post => attr
				redirect_to Post
			end

			it 'The user should see the post page after succesfully creating a valid new post' do
				post :create, :post => attr
				expect(response.status).to eq(302)
			end
		end

		context 'Test with invalid attributes' do
			let(:attr) do 
				{ :title => nil, :body => nil, :tags => nil }
			end

			it 'Do not create the post' do
			post :create, :post => attr
			expect(Post.count).to eq(1)
			end

			it 'User should be shown the New Post page again' do
				post :create, :post => attr
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

	describe "PUT update/:id with invalid attrs" do
	  let(:attr) do 
	    { :title => nil, :body => nil }
	  end

	  before(:each) do
	  	@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
		sign_in @user
	    put :update, :id => @post.id, :post => attr
	    @post.reload
	  end

	  it { expect(response.status).to eq(200) }
	end


	describe 'POST #delete' do
		before(:each) do 
			@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
			sign_in @user
		end

		it 'Delete a new post' do
			post = Post.create! :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic'
			post.save!
			delete :destroy, { :id => post.id }
			expect(flash[:notice]).to eq("Deleted post!")
			expect(response).to redirect_to(posts_path)
		end

		it 'Delete a random not present post' do
			delete :destroy, { :id => 12921921}
			expect(flash[:alert]).to eq("Error-d while trying to delete post!")
			expect(response).to redirect_to(posts_path)
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
