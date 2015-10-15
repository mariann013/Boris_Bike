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
    fail "Sorry bike is broken" if !@bikes[-1].working
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Docking Station full" if full?
    @bikes << bike
  end

private
def empty?
   @bikes.empty?
end

private
def full?
  @bikes.count >= capacity
end

end
