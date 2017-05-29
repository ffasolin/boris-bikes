class Vans # :nodoc:
  attr_reader :bikes_in_van
  def ships_to_garage(broken_bikes)
    @bikes_in_van = broken_bikes
  end

  def ships_to_station(fixed_bikes, station_bikes)
    @bikes_in_van = fixed_bikes
    fixed_bikes.each { |bike| station_bikes << bike }
  end
end
