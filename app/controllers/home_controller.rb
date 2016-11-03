class HomeController < ApplicationController
  def index
    @posts = Post.all
    @search_keyword = params[:search]
    if @search_keyword.nil?
      @posts = Post.all
    else
      @posts = Post.all
      #TODO(Timifasubaa): make it search the tag strings in Post for the search item.
    end
  end
end
