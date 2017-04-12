class DockingStation

  def release_bike()
    @bike = Bike.new
  end
  attr_reader :bike

  def docked?
    true
  end

  def return_bike
    docked?
  end

end
