class HomeController < ApplicationController
  protect_from_forgery except: :locations
  def index
    respond_to do |format|
      format.html do
        @posts = Post.all
      end
    end
  end

  def locations
    respond_to do |format|
      format.js do
        @posts = Post.all
        @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
          if post.latitude and post.longitude
            marker.lat post.latitude
            marker.lng post.longitude
            marker.title post.title
            marker.infowindow post.body
            marker.json({ :id => post.id })
          end
        end
        render :json => @hash.to_json
      end
    end
  end
end
