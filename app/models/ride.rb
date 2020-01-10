class Ride
    attr_accessor :driver
    
    def initialize
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    def distance
        @distance
    end

    def average_distance
        @average_distance = @distance.reduce {|distance| (passenger.total_distance / passenger.rides.count)}
    end
end
