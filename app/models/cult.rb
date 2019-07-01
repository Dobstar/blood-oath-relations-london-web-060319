class Cult


  attr_accessor :name, :location, :founding_year, :slogan

	@@all = []
	
  def initialize(name:, location:, founding_year:, slogan:)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
	  @@all << self
	end 

	def self.all
	@@all
  end 
  # `Cult#recruit_follower`
# * takes in an argument of a `Follower` instance and adds them to this cult's list of followers
  def recruit_follower(follower:)
    Bloodoath.new( follower: follower, cult: self)
  end 

  # * `Cult#cult_population`
# * returns a `Fixnum` that is the number of followers in this cult

  def all_followers
    cult = Bloodoath.all.select{|bo| bo.cult == self}
    followers = cult.map{|cult| cult.follower}
  end 

  def cult_population
    #get correct followers for this cult
    #count all the followers.
    # cult = Bloodoath.all.select{|bo| bo.cult == self}
    # followers = cult.map{|cult| cult.follower}
    all_followers.length
  end
 

# * `Cult.find_by_name`
# * takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
  def self.find_by_name(name)
    Cult.all.find{|cult| cult.name == name}
  end

# * `Cult.find_by_location`
# * takes a `String` argument that is a location and returns an `Array` of cults that are in that location
  def self.find_by_location(location)
    Cult.all.select{|cult| cult.location == location}
  end 

# * `Cult.find_by_founding_year`
# * takes a `Fixnum` argument that is a year and returns all of the cults founded in that year

  def self.find_by_founding_year(founding_year)
    Cult.all.select{|cult| cult.founding_year == founding_year}
  end 

#   * `Cult#average_age`
#   * returns a `Float` that is the average age of this cult's followers
  def average_age
    #already have all_followers to get all the followers for this cult.
    #just need to iterate through and grab the age then sum and count
   
    age = all_followers.map{|follower| follower.age}
    age.sum / age.count.to_f
  end 
# * `Cult#my_followers_mottos`
#   * prints out all of the mottos for this cult's followers
  def my_followers_mottos
    #get all followers. (use that method again)
    #grab the follower's life_mottos
    #print them out of the array
    mottos = self.all_followers.map{|follower|follower.life_motto}
    mottos.map { |motto| "'" + motto.to_s + "'" }.join(",")
  end 

  def cult_oaths
    Bloodoath.all.map{|oath| oath.cult}
   end 

  # `Cult.least_popular`
  # * returns the `Cult` instance who has the least number of followers :(

  #  def self.least_popular
  # # #   #need to go through bloodoath to get all instances of cult as a seperate method first.
  # # # then need to iterate through all the cults and min_by, count?
  #    Cult.all.min_by{|follower| all_followers.count(follower)}
  #   end 


  #  * `Cult.most_common_location`
  # * returns a `String` that is the location with the most cults

  def self.most_common_location
    #use the cult_oaths method for all cults.
    #will also need to grab the most common occurring location between the cults. so 
    #will then need to max_by and count?
    cult_locations = Cult.all.map{|cult| cult.location}
    cult_locations.max_by{|location| cult_locations.count(location)}
  end 
end 





