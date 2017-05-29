class DockingStation # :nodoc:
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity, :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
    @capacity.times { @bikes << Bike.new }
  end

  def release_bike
    return raise 'No bike available' if empty?
    @bikes.pop
  end

  def broken(bike)
    puts 'Is bike broken? Y or N'
    answer = gets.chomp
    answer == 'N' ? @bikes << bike : @broken_bikes << bike
  end

  def dock(bike)
    return raise 'Docking station is full' if full?
    broken(bike)
  end

  private

  def full?
    (@bikes.count + @broken_bikes.count) == @capacity ? true : false
  end

  def empty?
    @bikes.count.zero? ? true : false
  end
end
