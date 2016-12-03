
class Post < ActiveRecord::Base
	acts_as_commentable
	validates_presence_of :title, :body
	belongs_to :user
end
