class Van

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock_bike(bike)
    fail "Van full" if full?
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def get_broken_bikes
    broken_bikes
  end

  private

  def full?
    @bikes.count >= capacity
  end

  def empty?
     @bikes.empty?
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
