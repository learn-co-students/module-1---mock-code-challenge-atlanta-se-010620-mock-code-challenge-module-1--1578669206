class Driver

    attr_accessor :name 
    @@all = []


    def initialize(name, distance )
        @name = name 
        @@all << self 
    end 

    def name 
        return name 
    end 

    def self.all 
        @@all 
    end 
end 
