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

end