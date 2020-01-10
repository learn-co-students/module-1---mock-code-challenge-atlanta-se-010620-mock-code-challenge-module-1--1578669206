class Ride
    attr_reader :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.average_distance
        (Ride.all.map{ |ride| ride.distance}.sum)/Ride.all.size
    end

end
