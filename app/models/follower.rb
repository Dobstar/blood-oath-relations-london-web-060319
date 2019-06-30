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
end 


