require 'garage'

describe Garage do
  it 'fixes broken bikes brought by van' do
    docking_station = DockingStation.new
    van = Vans.new
    10.times { docking_station.release_bike }
    docking_station.dock(Bike.new)
    van.ships_to_garage(docking_station.broken_bikes)
    subject.fix(van.bikes_in_van)
    expect(subject.fixed_bikes.count).to eq 1
  end
end
