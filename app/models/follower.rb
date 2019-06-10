class Follower
  
    attr_reader :name, :age, :life_motto, :cults

    @@all = []

    def initialize(name, age, life_motto, cults)
        @name = name
        @age = age
        @life_mott = life_motto
        @cults = cults
    end


end 