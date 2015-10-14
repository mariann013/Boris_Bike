class DockingStation

  $DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Docking Station full" if full?
    @bikes << bikes
  end

end

private
def empty?
   @bikes.empty?
end

private
def full?
  @bikes.count >= $DEFAULT_CAPACITY
end


class Bike

  def working?
    @bike
  end

end
