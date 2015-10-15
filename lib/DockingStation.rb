require './lib/Bike.rb'

class DockingStation


  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Docking Station full" if full?
    bike.working ? @bikes << bike : @broken_bikes << bike
  end

  private

  def empty?
     @bikes.empty?
  end

  def full?
    @bikes.count >= capacity
  end

end
