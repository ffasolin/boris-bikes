class DockingStation

  def release_bike
    Bike.new
#@bike = 
  end
  #attr_reader :bike

  def docked?
    true
  end

  def return_bike
    docked?
  end

end
