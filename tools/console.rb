require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
alvin = Driver.new("Alvin")
carol = Driver.new("Carol")
rebecca = Passenger.new("Rebecca")
charlie = Passenger.new("Charlie")
edd = Passenger.new("Edd")

ride1 = Ride.new(alvin, rebecca, 50)
ride2 = Ride.new(alvin, charlie, 5.5)
ride3 = Ride.new(alvin, edd, 60)
ride4 = Ride.new(alvin, rebecca, 50)
ride5 = Ride.new(carol, rebecca, 3.5)
ride6 = Ride.new(carol, edd, 8.2)
ride7 = Ride.new(carol, charlie, 12)
ride8 = Ride.new(carol, edd, 9.7)

binding.pry
