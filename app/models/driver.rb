class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        self.rides.map{|ride| ride.passenger}.uniq
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def distance_total
        distance = self.rides.map{|ride| ride.distance}
        distance.sum
    end

    def self.mileage_cap(distance_drove)
        distance_drove = distance_drove.to_f #incase the input isn't a float, to be safe
        Driver.all.select{|driver| driver.distance_total > distance_drove}
    end
end
