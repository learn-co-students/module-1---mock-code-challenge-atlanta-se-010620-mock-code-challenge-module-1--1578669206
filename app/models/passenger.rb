class Passenger
    attr_reader :passenger, :distance, :driver
    @@rides = []
    @@total_distance = 0

    def initialize(name)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@total_distance += distance
        @@rides << self 
    end

    def self.rides
        @@rides
    end

    def self.drivers
        @@rides.collect{|i| i.driver}
    end

    def self.all
        @@rides.collect{|i| i.passenger}
    end

    def total_distance
        @@total_distance
    end

    def self.premium_members
        Passenger.all.collect{|i| i[:total_distance] > 100}
    end
end
