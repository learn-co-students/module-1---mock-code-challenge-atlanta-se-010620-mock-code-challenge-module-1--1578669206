
class Passenger
    attr_reader :name
    attr_accessor :rides, :drivers, :distance, :total_distance

    @@all = []

    def initialize(name)
        @name = name
        @rides = []
        @drivers = []
        @distance = 0
        @total_distance
        @@all.push self
    end
    
    def name
        @name
    end

    def rides
        @rides << Ride.new
    end

    def drivers
        @drivers << Driver.new
    end

    def total_distance
        @total_distance += distance.to_f
    end

    def self.all
        @@all
    end

end
