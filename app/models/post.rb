class Post < ActiveRecord::Base
	acts_as_commentable
	include Bootsy::Container
end
