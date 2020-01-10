
class Driver 
    # class instances 
    @@all = []
    attr_accessor :name, :distances, :passengers, :rides
    def initialize(name)
        @name = name 
        @passengers = [] 
        @rides = [] 
        @@all << self 

        # array to hold all driver's distances 
        @distances = [] 
    end 

    # instance methods 
    def passenger_names 
        @passengers.uniq 
    end 
    
    def rides 
        @rides 
    end 

    #class methods 
    def self.all 
        @@all 
    end 

    def self.mileage_cap(distance) 
        # Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        @@all.select {|index| index.distances.sum > distance }
    end 
end