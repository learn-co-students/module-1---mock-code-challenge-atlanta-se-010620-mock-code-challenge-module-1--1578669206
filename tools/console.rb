require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


my_driver1 = Driver.new('bill')
my_driver2 = Driver.new('bill')

my_passenger1 = Passenger.new('carol')
my_passenger2 = Passenger.new('carol')



new_ride1 = Ride.new(my_driver1,my_passenger1,10.3)
new_ride2 = Ride.new(my_driver2,my_passenger2,20.3)
new_ride3 = Ride.new(my_driver1,my_passenger1,30.3)
new_ride4 = Ride.new(my_driver2,my_passenger2,40.3)
new_ride5 = Ride.new(my_driver1,my_passenger1,50.3)

binding.pry


