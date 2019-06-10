class Cult

 attr_reader :name, :location, :founding_year, :slogan, :follower, :cult_population

 @@all = []

    def initialize
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @follower = follower
        @cult_population = cult_population
        @@all << self
    end 

        def self.all
        @@all
        end
        
        def self.find_by_name(name)
          Cult.all.find{|cult| cult.name == name}
        end 

        def self.find_by_location(location)
          Cult.all.select{|cult| cult.location == location}
        end 

        def self.find_by_founding_year(founding_year)
           Cult.all.select{|cult| cult.founding_year == founding_year}
        end
end 
