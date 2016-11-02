# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Post Seeds
post1 = Post.create(:title => "Post 1", :description => "Post 1 description", :post_url => "http://www.google.com", :location => "Norway", :tags => "post1,norway,google")
post2 = Post.create(:title => "Post 2", :description => "Post 2 description", :post_url => "http://www.facebook.com", :location => "Sweden", :tags => "post2,sweden,facebook")
Post.create(:title => "Post 3", :description => "Post 3 description", :post_url => "http://www.reddit.com", :location => "Russia", :tags => "post3,russia,reddit")
Post.create(:title => "Post 4", :description => "Post 4 description", :post_url => "http://www.9gag.com", :location => "Greenland", :tags => "post4,greenland,9gag")
Post.create(:title => "Post 5", :description => "Post 5 description", :post_url => "http://www.gmail.com", :location => "Iceland", :tags => "post5,iceland,gmail")

# Comment Seeds
# post1 has 2 comments
comment1 = post1.comments.create(:title => "P1: First Comment", :comment => "First comment on post 1 body.")
comment1.save()
comment2 = post1.comments.create(:title => "P1: Second Comment", :comment => "Second comment on post 1 body.")
comment2.save()
# post2 has 1 comment
p2comment1 = post2.comments.create(:title => "P2: First Comment", :comment => "First comment on post 2 body.")
p2comment1.save()