class Driver
attr_accessor :name, :passenger_name, :rides
    @@all = []

    def initialize(name)
        @name = name
        @passenger_name = []
        @rides = []
        @@all.push self
    end

    def name
        @name
    end

    def passenger_name
        @passenger_name << Passenger.rides
    end

    def rides
        @rides << Ride.new
    end

    def self.all
        @@all
    end
end
