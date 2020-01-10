require 'pry'
class Ride
    attr_accessor :driver :passenger :name 
@@all = []
    def initialize( driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        
    end 

    def self.all(passengers)
        @@all.map(|passengers| @passengers)


    end 
end 
