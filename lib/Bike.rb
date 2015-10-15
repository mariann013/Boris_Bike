class Bike

	attr_accessor :working

  def initialize(status = true)
  	@working = status
  end

  def working?
  	@working 
  end

  def broken?
  	!working?
  end

end
