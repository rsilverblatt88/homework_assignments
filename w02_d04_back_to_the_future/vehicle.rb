require 'pry'
require 'date'


class Vehicle
  attr_accessor :capacity, :description, :passengers, :location, :location_in_time

  def initialize(description, capacity, location)
    @description = description
    @passengers = []
    @capacity = capacity
    @location = location
    @location_in_time = Date.today
  end

  # => setter for capacty
  # def capacity(number)
  #   @capacity = number
  # end

  # def capacity
  #   @capacity
  # end

  def in_danger?
    if @passengers.length > @capacity
      "There are more passengers then we can handle!"
    else
      "Keep adding more passengers"
    end
  end

  def add_passenger(name)
    @passengers.push(name)
  end

  def go_to(location)
    if @passengers.length == 0
      "the vehicle needs a passenger!"
    else
      @location = location
      "The #{@description} is set to #{@location}"
    end
  end

end

# => Train Class
class Train < Vehicle
  def pull_the_rope
    "Woo wooo!!!"
  end
end


# => Skateboard Class
class Skateboard < Vehicle
  attr_accessor :goofy

  def initialize(description, location)
    super(description, 1, location)
    @goofy = false
  end

  def grind
    if @passengers.length == 1
      "khkhkhkhkh klunck khkh"
    else
      "This #{description} skateboard is empty"
    end
  end

  def kickflip
    if @passengers.length == 1
      "Rad! I can kickflip!"
    else
      "This #{description} skateboard is empty"
    end
  end

  def goofy?
    @goffy
  end

end


# => Bicycle Class
class Bicycle < Vehicle

  attr_accessor :capacity

  def initialize(description, location)
    super(description, 2, location)
  end

  def add_passenger(name)
    if @passengers.length < 2
      @passengers.push(name)
    else
      "You have too many passengers"
    end
  end

  def in_danger?
    @passengers.length == capacity
  end

  def go_to(location)
    if (rand < 0.5)
      @passengers.clear
      "Crash!! Your passengers are lost!"
    else
      @passengers.push(location)
      "This #{@description} is heading to #{location}"
    end
  end

end


# => Car Class
class Car < Vehicle

  attr_reader :year_produced, :make, :model
  attr_accessor :color, :location_in_time

  def initialize(capacity, year_produced, make, model, color, location)
    super('', capacity, location)
    @year_produced = year_produced
    @make          = make
    @model         = model
    @color         = color
    @fuel          = false
    @location_in_time = Date.today
  end

  def refuel
    if @fuel
      "No need to top off!"
    else
      @fuel = true
      "Tank is now full!"
    end
  end

  def description
    "#{@color} #{@year_produced} #{@make} #{@model}"
  end

  def go_to(location)
    if @fuel == false
      "Refuel the tank!"
    else
      @fuel = false
      @location = location
      "We're off to #{@location}!"
    end
  end

end

delorean = Car.new(2,1981,'DeLorean','DMC-12','gray', 'Hill Valley')


# class Polygon
#   @sides = 10
#   def self.sides
#     @sides
#   end
# end


# class Triangle < Polygon
#   @sides = 3
# end
