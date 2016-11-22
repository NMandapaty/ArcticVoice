# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Post Seeds
post1 = Post.create(:title => "Post 1", :body => "Post 1 body", :location => "Norway", :tags => "post1,norway,google", :latitude => 64.521651, :longitude => -43.810070)
post2 = Post.create(:title => "Post 2", :body => "Post 2 body", :location => "Sweden", :tags => "post2,sweden,facebook", :latitude => 70.119187, :longitude =>  -48.731945)
Post.create(:title => "Post 3", :body => "Post 3 body", :location => "Russia", :tags => "post3,russia,reddit", :latitude => 79.126513,  :longitude => -59.278820)
Post.create(:title => "Post 4", :body => "Post 4 body", :location => "Greenland", :tags => "post4,greenland,9gag", :latitude => 83.311480,  :longitude => -36.870883)
Post.create(:title => "Post 5", :body => "Post 5 body", :location => "Iceland", :tags => "post5,iceland,gmail", :latitude => 71.616353, :longitude => -75.015414)

# Comment Seeds
# post1 has 2 comments
comment1 = post1.comments.create(:title => "P1: First Comment", :comment => "First comment on post 1 body.")
comment1.save()
comment2 = post1.comments.create(:title => "P1: Second Comment", :comment => "Second comment on post 1 body.")
comment2.save()
# post2 has 1 comment
p2comment1 = post2.comments.create(:title => "P2: First Comment", :comment => "First comment on post 2 body.")
p2comment1.save()



