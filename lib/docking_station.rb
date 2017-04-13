class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      raise "No bikes available."
    else
      @bike
    end
  end

  def dock(bike)
    return raise "No space at this docking station."  if @bike != nil
    @bike = bike
  end
end
