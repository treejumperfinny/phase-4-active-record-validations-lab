# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding... seeding...annd...."

Author.create(name: "coolguy1", phone_number: "1-650-557-8969")
Author.create(name: "aperson45", phone_number: "1-415-245-1234")
Author.create(name: "defnotadoggo", phone_number: "1-513-555-5555")

puts "annddd...itsss..."

Post.create(title: "Top 10 Bread Types", content: "Bread is not only my passion in life, but the part of life that actually makes me happy. You cannot live on bread alone. But what if you could. lol",summary:"Stuff about things and stuff", category: "Non-Fiction")
Post.create(title: "You Won't Believe This Trick", content: "A cool magic trick you won't believe beccause it is just CGI. Unless... it isn't?!",summary: "Tricks and you want to know", category: "Fiction")
Post.create(title: "Guess the nut", content: "You have to guess each nut correctly. I bet you cannot even guess that this is a cashew. Shoot I gave it away! JK its actually a brazil nut. Those mfks are huge!",summary: "Guess the nut", category: "Fiction")
Post.create(title: "Secret Tunnels Under NYC!", content: "There are so mang tunnels that you cannot go into. They are actually called pipes. Yah. For poop. Don't look at me like that.",summary: "Travel these tunnels", category: "Non-Fiction")
Post.create(title: "Top Secret's You cannot guess and you won''t belive",content: "You will not believe the things about the secrets about the things that you watn to know! Like omg you will not believe this!",summary: "gut check!", category: "Fiction" )
Post.create(title: "nuts", content: "All about nuts and the things about them and the things about them and the things.",summary:"eat mine", category: "Non-Fiction")

puts "done!"