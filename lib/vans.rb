class Vans # :nodoc:
  attr_reader :bikes_in_van
  def ships_to_garage(broken_bikes)
    @bikes_in_van = broken_bikes
  end
end
