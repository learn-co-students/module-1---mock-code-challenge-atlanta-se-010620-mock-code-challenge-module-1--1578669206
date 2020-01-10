class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map{|ride| ride.driver}
    end

    def total_distance     
        self.rides.map{ |ride| ride.distance}.sum
    end

    def self.all
        @@all
    end

    def self.premium_members # > 100 miles
        Passenger.all.select{|passenger| passenger.total_distance > 100}
    end
end
