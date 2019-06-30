class Bloodoath

   attr_reader :cult, :follower, :initiation_date

	@@all = []
	
   def initialize(initiation_date:, follower:, cult:)
      @initiation_date = Time.now.strftime("%Y/%m/%d")
      @follower = follower
      @cult = cult
	   @@all << self
	end 

	def self.all
	@@all
  end 

  def self.first_oath
   #use find to get the first follower?
      self.all.find{|oath| oath.follower}
  end 

end
# * `BloodOath.first_oath`
#   * returns the `Follower` instance for the follower that made the very first blood oath