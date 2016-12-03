require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	it "Expect to see the #show view with current user as me" do
		@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
	  	allow(controller).to receive(:current_user) { @user }
	  	@post = @user.posts.build(:title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic')
		@current_user = true
		get :show, :id => @user.id
		expect(response).to render_template(:show)
	end
	it "Expect to see the #show view with current user as not me" do
		@user = User.create! :name => "Eeshan", :is_researcher => true, :email => "e@e.com", :password => "secure pass"
	  	@post = @user.posts.build(:title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic')
		@current_user = true
		get :show, :id => @user.id
		expect(response).to render_template(:show)
	end
end
