class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize
    @bikes = []
    DEFAULT_CAPACITY.times do
      @bikes << Bike.new
    end
  end

  def release_bike
    return raise "No bike available" if empty?
    @bikes.pop
  end

  def dock(bike)
    return raise "Docking station is full" if full?
    @bikes << bike
  end

  private
    def full?
      return true if @bikes.count == DEFAULT_CAPACITY
      false
    end

    def empty?
      return true if @bikes.count == 0
      false
    end
end
