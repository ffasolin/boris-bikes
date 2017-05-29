class Garage # :nodoc:
  attr_reader :fixed_bikes
  def fix(broken_bikes)
    @fixed_bikes = []
    broken_bikes.each { |bike| @fixed_bikes << bike }
    broken_bikes.clear
  end
end
