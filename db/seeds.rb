# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Post Seeds
Post.create(:title => "Post 1", :id => 1, :description => "Post 1 description", :post_url => "http://www.google.com", :location => "Norway", :tags => "post1,norway,google")
Post.create(:title => "Post 2", :id => 1, :description => "Post 2 description", :post_url => "http://www.facebook.com", :location => "Sweden", :tags => "post2,sweden,facebook")
Post.create(:title => "Post 3", :id => 1, :description => "Post 3 description", :post_url => "http://www.reddit.com", :location => "Russia", :tags => "post3,russia,reddit")
Post.create(:title => "Post 4", :id => 1, :description => "Post 4 description", :post_url => "http://www.9gag.com", :location => "Greenland", :tags => "post4,greenland,9gag")
Post.create(:title => "Post 5", :id => 1, :description => "Post 5 description", :post_url => "http://www.gmail.com", :location => "Iceland", :tags => "post5,iceland,gmail")
