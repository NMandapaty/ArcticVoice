# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Todo(Timifasubaa): Make User seeds.
# User seed
user1 = User.create(:name => "Joe Garcia", :phone => "510-555-2525", :email => "joe@gmail.com", :password => "test123", :password_confirmation => "test123")
user2 = User.create(:name => "Olivia Erikkson", :phone => "510-696-6111", :email => "o@gmail.com", :password => "test123", :password_confirmation => "test123")
user3 = User.create(:name => "Victoria Luu", :phone => "510-616-3422", :email => "v@gmail.com", :password => "test123", :password_confirmation => "test123")
user4 = User.create(:name => "Arnbjorg Olafur", :phone => "510-334-1455", :email => "a@gmail.com", :password => "test123", :password_confirmation => "test123")
user5 = User.create(:name => "Whale BigFish", :phone => "432-434-0115", :email => "w@gmail.com", :password => "test123", :password_confirmation => "test123")

# Post Seeds
post1 = Post.create(:title => "The ice level is lower than it was this time last year", :body => "I was here for a hike this time last year and the ice was at least a meter higher than it is right now!", :location => "Norway", :tags => "norway,google", :latitude => 64.521651, :longitude => -43.810070)
post2 = Post.create(:title => "Analysis of The Arctic Maruder -", :body => "In Jacques Tardi’s “The Arctic Marauder” the relationship between science, ethics, and violence are commonplace. During the course of the graphic novel two crazed scientists, Louis-Ferdinand Chapoutier and Carlo Gelati, and Chapoutier’s nephew Jerome Plumier devise a plan to destroy the world, without once thinking of the moral complications of their acts. Much like the characters in the novel, this issue has been present throughout contemporary history, especially that concerning military actions", :location => "Sweden", :tags => "post2,sweden,facebook", :latitude => 70.119187, :longitude =>  -48.731945)
post2_1 = Post.create(:title => "This 500 year old cultural artifact is degrading due to severe changes in climate", :body => "This 500 year old cultural artifact is degrading due to severe changes in climate", :location => "Russia", :tags => "post3,russia,reddit", :latitude => 79.126513,  :longitude => -59.278820)
post3 = Post.create(:title => "Survival of Warm-Blooded Aminals in Arctic Conditions ", :body => "To find out how warm-blooded animals survive in the Arctic conditions. Background information: The Arctic conditions are extreme; they consist of sub-zero temperatures, heavy snow, strong winds and ice. To survive these conditions animals must keep a constant body temperature to maintain the optimum temperature for essential chemical reactions to take place. If a living cell cools to a temperature below 0°C then ice crystals can form which will puncture the cell membrane causing the cell to burst.", :location => "Greenland", :tags => "post4,greenland,9gag", :latitude => 83.311480,  :longitude => -36.870883)
post4 = Post.create(:title => "The Arctic Tundra: Home to the Polar Bears", :body => "The Arctic tundra, a vast plain of ice and water, is located on the northern poles of the Earth. Characterized by its low precipitation, minimum sunlight, and a layer of permafrost- a thick layer of ice that never thaws away- this biome is very cold, with temperatures as low as negative 70oC. One specific population that has adapted to this harsh environment is the polar bears. The Arctic tundra’s extreme temperatures have caused species, specifically polar bears, to adapt to it. Polar bears feed on animals that live underwater; therefore, they are extremely strong swimmers", :location => "Iceland", :tags => "post5,iceland,gmail", :latitude => 71.616353, :longitude => -75.015414)
post5 = Post.create(:title => "It's getting really warm down here", :body => "North Atlantic Ocean", :location => "North Atlantic Ocean", :tags => "post5,iceland,gmail", :latitude => 40.332549,  :longitude => -40.650180)
user1.posts << post1
user2.posts << post2
user2.posts << post2_1
user3.posts << post3
user4.posts << post4
user5.posts << post5
user1.save()
user2.save()
user3.save()
user4.save()
user5.save()

# Comment Seeds
# post1 has 2 comments
comment1 = post1.comments.create(:title => "P1: First Comment", :comment => "First comment on post 1 body.")
comment1.save()
comment2 = post1.comments.create(:title => "P1: Second Comment", :comment => "Second comment on post 1 body.")
comment2.save()
# post2 has 1 comment
p2comment1 = post2.comments.create(:title => "P2: First Comment", :comment => "First comment on post 2 body.")
p2comment1.save()