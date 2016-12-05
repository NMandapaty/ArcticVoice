# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User seed
user1 = User.create(:name => "Joe Garcia", :phone => "510-555-2525", :email => "joe_garcia@gmail.com", :password => "test123", :password_confirmation => "test123")
user2 = User.create(:name => "Olivia Erikkson", :phone => "510-696-6111", :email => "o@gmail.com", :password => "test123", :password_confirmation => "test123")
user3 = User.create(:name => "Victoria Luu", :phone => "510-616-3422", :email => "v@gmail.com", :password => "test123", :password_confirmation => "test123")
user4 = User.create(:name => "Arnbjorg Olafur", :phone => "510-334-1455", :email => "a@gmail.com", :password => "test123", :password_confirmation => "test123")
user5 = User.create(:name => "Whale BigFish", :phone => "432-434-0115", :email => "w@gmail.com", :password => "test123", :password_confirmation => "test123")

# Post Seeds
post1 = Post.create(:title => "The ice level has drastically decreased!", :body => "I distinctly remember how thick the ice in this region were in summer back when I was a kid. I am in my 30s now and I believe on a global scale this is not a very large time span. This change is very very concerning.", :location => "Norway", :tags => "norway,hiking,personal,experience", :latitude => 64.521651, :longitude => -43.810070)
post2 = Post.create(:title => "Analysis of The Arctic Maruder -", :body => "In Jacques Tardi’s “The Arctic Marauder” the relationship between science, ethics, and violence are commonplace. During the course of the graphic novel two crazed scientists, Louis-Ferdinand Chapoutier and Carlo Gelati, and Chapoutier’s nephew Jerome Plumier devise a plan to destroy the world, without once thinking of the moral complications of their acts. Much like the characters in the novel, this issue has been present throughout contemporary history, especially that concerning military actions", :location => "Sweden", :tags => "Tardi,literature,rambling", :latitude => 70.119187, :longitude =>  -48.731945)
post2_1 = Post.create(:title => "Communication platform from UC Berkeley", :body => "Our foremost researchers have been studying the change in climate and how it affects the arctic region specifically. But recently, the non climate enthusiasts have also begun taking an interest in the problems in the region. An exceptionally brilliant team of undergraduates is behind the ArcticVoice, an online communication platform that aimes to make it easier to to start a conversation around the issues challenges us today.", :location => "Berkeley, CA", :tags => "website,berkeley,students", :latitude => 79.126513,  :longitude => -59.278820)
post3 = Post.create(:title => "Survival of Warm-Blooded Aminals in Arctic Conditions ", :body => "The Arctic conditions are extreme; they consist of sub-zero temperatures, heavy snow, strong winds and ice. To survive these conditions animals must keep a constant body temperature to maintain the optimum temperature for essential chemical reactions to take place. If a living cell cools to a temperature below 0°C then ice crystals can form which will puncture the cell membrane causing the cell to burst.", :location => "Greenland", :tags => "animals,greenland,warmblood", :latitude => 83.311480,  :longitude => -36.870883)
post4 = Post.create(:title => "The Arctic Tundra: Home to the Polar Bears", :body => "The Arctic tundra, a vast plain of ice and water, is located on the northern poles of the Earth. Characterized by its low precipitation, minimum sunlight, and a layer of permafrost- a thick layer of ice that never thaws away- this biome is very cold, with temperatures as low as negative 70oC. One specific population that has adapted to this harsh environment is the polar bears. The Arctic tundra’s extreme temperatures have caused species, specifically polar bears, to adapt to it. Polar bears feed on animals that live underwater; therefore, they are extremely strong swimmers", :location => "Iceland", :tags => "iceland,Polar,bears", :latitude => 71.616353, :longitude => -75.015414)
post5 = Post.create(:title => "It is getting warm down here", :body => "I am a sailor and I spend more time at sea than on land. I would like to tell you what our most sophisticated temperature measurements tell us. I have been a part of a global merchant navy enterprise for over 20 years. And even our own devices do not show any positives.", :location => "North Atlantic Ocean", :tags => "sailing,sailor,warm", :latitude => 40.332549,  :longitude => -40.650180)
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
# comment1 = post1.comments.create(:title => "That is sad ...", :comment => "While I do not live in the arctic I do very strongly feel your pain.")
# comment1.save()
# comment2 = post1.comments.create(:title => "Oh my lord, we must do something about this!", :comment => "Second comment on post 1 body.")
# comment2.save()
# post2 has 1 comment
# p2comment1 = post2.comments.create(:title => "P2: First Comment", :comment => "First comment on post 2 body.")
# p2comment1.save()
