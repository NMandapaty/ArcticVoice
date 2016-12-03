require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #locations" do
  	it 'gets post locations responds in json format' do
  		post = Post.create :title => "Global Warnming is bad!", :body => 'Global warming is really getting pretty bad here', :tags => 'greenland, arctic', :latitude => 37.869285, :longitude => -122.258429
  		xhr :post, :locations
  		ActiveSupport::JSON.decode(response.body).should_not be_nil
  	end
  end
end
