class Driver
    attr_accessor :driver, :passenger
    @@rides = []

    def initialize(driver)
        @driver = driver 
        @passenger = passenger
        @@rides << self
    end

    def passenger_names
       passengers = @@rides.collect{|i| i.passenger}
       passengers.uniq
    end

    def rides
        @@rides
    end

    def self.all
        @@rides.all.collect{|i| i.driver}
    end
end
