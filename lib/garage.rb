class Garage # :nodoc:
  def fix
    @broken_bikes.each { |fixed| @bikes << fixed }
    @broken_bikes.clear
  end
end
