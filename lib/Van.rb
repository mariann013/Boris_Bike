class Van

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def dock_bike(bike)
    fail "Van full" if full?
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= capacity
  end

  def empty?
     @bikes.empty?
  end

end
