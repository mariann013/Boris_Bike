require './lib/Bike.rb'

class DockingStation


  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    self.working_bikes.pop
  end

  def dock_bike(bike)
    fail "Docking Station full" if full?
    @bikes << bike
  end

  private

  def empty?
     @bikes.empty?
  end

  def full?
    @bikes.count >= capacity
  end

  def add_to_bikes(bike)
    @bikes << bike
  end

  def working_bikes
    @bikes.select { | bike | bike.working? }
  end

  def broken_bikes
    @bikes.select { | bike | !bike.working? }
  end

end
