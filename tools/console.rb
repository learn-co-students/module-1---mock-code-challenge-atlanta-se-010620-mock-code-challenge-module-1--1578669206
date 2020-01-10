require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
rashad = Passenger.new('rashad')
burly = Driver.new('burly')
to_mozambique = Ride.new(rashad, burly, 42)
binding.pry
