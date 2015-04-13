# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User list data
# email, password, password_confirmation, firstname, lastname, admin
user_list = [
  ["tomriddle@voldemort.com", "t0mr1ddl3!@", "t0mr1ddl3!@", "Tom", "Riddle", false],
	["haroldfinch@decima.com", "h44r0ld1@@!", "h44r0ld1@@!", "Harold", "Finch", false],
	["rgivens@usms.gov", "raylan1", "raylan1", "Raylan", "Givens", false],
	["deanwinchester@mof.com", "ilikescotch", "ilikescotch", "Dean", "Winchester", false],
	["wwhite@icu.edu.net", "heisenberg", "heisenberg", "Walter", "White", false],
	["tyrion@lannisters.com", "godoftitsandwine", "godoftitsandwine", "Tyrion", "Lannister", true]
]

# Category list data
# name
category_list = [
	"Drama",
	"Action", 
	"Sci-Fi", 
	"Political"
]

# Product list data
# title, description, category_id, user_id, price
product_list = [
	["Person of Interest", "An ex-CIA hitman partners with a scientist to precent crimes before they occur", 1, 14.99],
	["Supernatural", "Two brothers fight with supernatural beings to make earth a peaceful place.", 2, 19.50],
	["House of Cards", "Francis Underwood has his hands on every secret in politics - and is willing to betray them all to become President.", 4, 99.00],
	["Justified", "Show about U.S Marshal Raylan Givens, a modern day 19th century-style lawnman", 2, 9.99],
	["Breaking Bad", "Drama focused on mid-life crisis gone bad for a high school chemistry teacher who turns to a life of crime", 1, 34.25],
	["Battlestar Galactica", "The last major Colonial fighter carrier leads a makeshift fleet of human refugees on desperate search for the legendary planet earth", 3, 114.00]
]

# Review list data
# content, rating, product_id, user_id
review_list = [
 	["Great show! Love Bryan Cryanston as Walter White!", 5, 5, 1],
	["Love it! Is not Dean just most handsome man, ever?", 1, 2, 5],
	["And now we do not work in secret anymore...", 2, 1, 2],
	["Ups, I wanted to give a rating of 0.", 0, 1, 2],
	["A great show about greatest U.S Marshall that ever lived. Smiley-face.", 4, 4, 3],
	["I don\'t normally like ghosts and demons, but i like them in this show!", 3, 2, 4],
	["Great show! Love Bryan Cryanston as Walter White!", 5, 5, 1],
	["Love it! Is not Dean just most handsome man, ever?", 1, 2, 5],
	["And now we do not work in secret anymore...", 2, 1, 2],
	["Ups, I wanted to give a rating of 0.", 0, 1, 2],
	["A great show about greatest U.S Marshall that ever lived. Smiley-face.", 4, 4, 3],
	["I don\'t normally like ghosts and demons, but i like them in this show!", 3, 2, 4],
	["Great show! Love Bryan Cryanston as Walter White!", 5, 5, 1],
	["Love it! Is not Dean just most handsome man, ever?", 1, 2, 5],
	["And now we do not work in secret anymore...", 2, 1, 2],
	["Ups, I wanted to give a rating of 0.", 0, 1, 2],
	["A great show about greatest U.S Marshall that ever lived. Smiley-face.", 4, 4, 3],
	["I don\'t normally like ghosts and demons, but i like them in this show!", 3, 2, 4],
	["Great show! Love Bryan Cryanston as Walter White!", 5, 5, 1],
	["Love it! Is not Dean just most handsome man, ever?", 1, 2, 5],
	["And now we do not work in secret anymore...", 2, 1, 2],
	["Ups, I wanted to give a rating of 0.", 0, 1, 2],
	["A great show about greatest U.S Marshall that ever lived. Smiley-face.", 4, 4, 3],
	["I don\'t normally like ghosts and demons, but i like them in this show!", 3, 2, 4]
]


# Run 'em all
user_list.each do |email, password, password_confirmation, firstname, lastname, admin|
  User.create(email: email, password: password, password_confirmation: password_confirmation, firstname: firstname, lastname: lastname, admin: admin)
end

category_list.each do |name|
  Category.create(name: name)
end

product_list.each do |title, description, category_id, price|
  Product.create(title: title, description: description, category_id: category_id, price: price)
end

review_list.each do |content, rating, product_id, user_id|
  Review.create(content: content, rating: rating, product_id: product_id, user_id: user_id)
end
