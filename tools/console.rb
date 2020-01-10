require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

class Passenger
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

# passenger = Passenger.new("john")

class Driver
  attr_accessor :name


  def initialize(name)
    @name = name
  end


end

dino = Driver.new("Dino")
lyn = Driver.new("Lyn")



binding.pry
