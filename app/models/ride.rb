
class Ride 
    # class variables 
    # array to track all distances 
    @@distances = [] 


    def initialize(driver, passenger, distance)
        @driver = driver 
        @passenger = passenger
        @distance = distance
        @@distances << distance
        @driver.distances << distance
        @passenger.distances << distance
        @passenger.drivers << driver 
        @driver.passengers << passenger
        @driver.rides << self 
        @passenger.rides << self 

    end 

    # instance methods 
    def passenger 
        @passenger
    end

    def driver 
        @driver
    end

    def distance
        @distance
    end

    
    # class methods 
    def self.average_distance
        (@@distances.sum/@@distances.length).to_f
    end

    # making a method for returning @@distances for debugging 
    def self.distances 
        @@distances
    end
end 
