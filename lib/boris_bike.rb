class DockingStation
  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def release_bike
    bike = Bike.new
   end

  def dock(bike)
  end
end

class Bike
  def working?
      true
  end
end

docking_station = DockingStation.new("bike")
