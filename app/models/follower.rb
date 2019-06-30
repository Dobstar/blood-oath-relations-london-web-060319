class Follower
  
    attr_reader :name, :age, :life_motto
	attr_writer
	attr_accessor

	@@all = []
	
    def initialize(name:, age:, life_motto:)
        @name = name
        @age = age
        @life_motto = life_motto
	    @@all << self
	end 

	def self.all
	@@all
    end 
  # `Follower#cults`
#   * returns an `Array` of this follower's cults
    def cults
    #go through bloodoath to SELECT the follower == to self.
    #map through to grab the follower's cults
    follower = Bloodoath.all.select{|bo| bo.follower == self}
    follower.map{|follower| follower.cult}
    end 
  # * `Follower#join_cult`
#   * takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers

    def join_cult  (initiation_date:, follower:, cult:)
    Bloodoath.new(initiation_date: initiation_date, follower: self, cult: cult)
    end 

# * `Follower.of_a_certain_age`
#   * takes a `Fixnum` argument that is an age and returns an `Array` of followers who are the given age or older

    def self.of_a_certain_age(age)
        Follower.all.select{|follower| follower.age >= age}
    end 

# * `Follower#my_cults_slogans`
#   * prints out all of the slogans for this follower's cults

    def my_cults_slogans
        #need to get all the cults for this follower. use the cults method:
        #this goes through bloodoath.
        #grab the slogans from them.
        get_slogans = cults.map{|cult| cult.slogan}
        get_slogans.map { |slogan| "'" + slogan.to_s + "'" }.join(",")
    end 

    # * `Follower.most_active`
#   * returns the `Follower` instance who has joined the most cults
        def all_followers
           Bloodoath.all.map{|oath| oath.follower}
        end 

     def self.most_active
    #     #get all followers first in another method.
         self.all_followers.max_by{|follower| all_followers.count(follower)}
     end 
end 


# * `Follower.top_ten`
#   * returns an `Array` of followers; they are the ten most active followers

