class Ride
    attr_reader :driver, :passenger
    attr_accessor :distance

    @@rides = []
    @@distance = 0

    def initalize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@rides << self
        @@distance += distance
    end

    def driver
        self.driver
    end

    def passenger
        self.passenger
    end

    def distance
        self.distance
    end

    def self.average_distance
        @@distance / @@rides.length
    end
end
