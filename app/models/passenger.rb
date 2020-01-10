
class Passenger 
    # class variables 
    @@all = [] 

    attr_accessor :name, :distances, :drivers, :rides 
    def initialize(name)
        @name = name 
        @rides = [] 
        @drivers = [] 
        @distances = [] 
        @@all << self 
    end 

    # instance methods 
    def rides 
        @rides 
    end

    def drivers 
        @drivers 
    end 
    
    def total_distance 
        @distances.sum 
    end 
    
    # class methods 

    def self.all
        @@all 
    end

    def self.premium_members 
        # Returns an array of all Passengers who have travelled over 100 miles in total with the service
        @@all.select{|index| index.total_distance>100}
    end 
end