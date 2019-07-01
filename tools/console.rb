require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#follower
lily = Follower.new(name:"Lily", age: 35, life_motto:"Be nice and others will treat you kindly")
marshall = Follower.new(name:"Marshall", age: 35, life_motto:"food is life")
ted = Follower.new(name:"Ted", age: 34, life_motto:"Shes the one")

#cult
the_order = Cult.new(name:"The Order", location:"New York", founding_year: 1950, slogan:"We are lizards")
phoenix = Cult.new(name:"Order of the Phoenix", location:"Hogwarts", founding_year: 2013, slogan:"We are wizards")
pulp_fiction = Cult.new(name:"Pulp Fiction", location:"Brooklyn", founding_year: 2001, slogan:"Hakuna matata")

#bloodoath
b1 = Bloodoath.new(follower:marshall, cult:the_order)
b2 = Bloodoath.new(follower:lily, cult:the_order)
b3 = Bloodoath.new(follower:ted, cult:the_order)
b4 = Bloodoath.new(follower:lily, cult:phoenix)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
