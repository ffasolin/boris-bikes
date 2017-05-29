require 'vans'
require 'docking_station'
require 'bike'
require 'garage'

describe Vans do
  it 'takes broken bikes on the van' do
    docking_station = DockingStation.new
    10.times { docking_station.release_bike }
    docking_station.dock(Bike.new)
    subject.ships_to_garage(docking_station.broken_bikes)
    expect(subject.bikes_in_van.count).to eq 1
  end

  fit 'takes fixed bikes back to docking station' do
    docking_station = DockingStation.new
    garage = Garage.new
    10.times { docking_station.release_bike }
    docking_station.dock(Bike.new)
    subject.ships_to_garage(docking_station.broken_bikes)
    garage.fix(subject.bikes_in_van)
    subject.ships_to_station(garage.fixed_bikes, docking_station.bikes)
    expect(docking_station.bikes.count).to eq 11
  end
end
