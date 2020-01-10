require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

class Driver

  @@all = []

  def name(name)
    @name = name 
  end

  def passenger_names(passenger_names)
    @passenger_names = passenger_names
  end

  def rides(rides)
    @rides = rides
  end

  def initialize all
    @@all << 
  end

  def initialize mileage_cap(distance)
  end

end




binding.pry
