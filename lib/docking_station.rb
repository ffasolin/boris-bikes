class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity

  def initialize
    puts "How many bikes would you like to store in this station?"
    cap = gets.chomp
    cap != "" ? @capacity = cap.to_i : @capacity = DEFAULT_CAPACITY
    @bikes = []
    @broken_bikes = []
    @capacity.times do
      @bikes << Bike.new
    end
  end

  def release_bike
    return raise "No bike available" if empty?
    @bikes.pop
  end

  def broken(bike)
    puts "Is bike broken? Y or N"
    answer = gets.chomp
    if answer == 'N'
      @bikes << bike
    else
      @broken_bikes << bike
    end
  end

  def dock(bike)
    return raise "Docking station is full" if full?
    broken(bike)
  end

  private
  def full?
    (@bikes.count + @broken_bikes.count) == @capacity ? true : false
  end

  def empty?
    @bikes.count == 0 ? true : false
  end
end
