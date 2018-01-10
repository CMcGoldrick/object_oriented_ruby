class Vehicle  
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def direction
    @direction
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize(input_options) # you can select anything you want here. 
    super() # this is empty because no argument is taken from the superclass. SAME NUMBER OF ARGUMENTS NEEDS TO BE ASKED FOR AND GIVEN.
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options)
    super()
    @speed = input_options[:speed]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end  

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: "diesel",
              make: "Volvo",
              model: "V40")

bike = Bike.new(
              speed: 50,
              type: "Kawasaki",
              weight: 500
              )

p car
p bike
p bike.ring_bell








# class Carsound < Car
#   attr_writer :accelerate
#   def print_info

#   end
# end

# class Bikesound < Bike
#   attr_writer :accelerate
#   def print_info

#   end
# end


# car = Carsound.new(speed: 50)
# bike = Bikesound.new(speed: 60)

































