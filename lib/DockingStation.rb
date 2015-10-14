class DockingStation

<<<<<<< HEAD
  $DEFAULT_CAPACITY = 20

  attr_reader :bikes
=======
  attr_reader :bike
>>>>>>> 48e3c504d1ec9528bd7f825abf0d11d1b0143ff4

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
