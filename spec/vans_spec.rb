require 'vans'
require 'garage'

describe Vans do
  it 'should take broken bikes on the van' do
    docking_station = DockingStation.new
    10.times { docking_station.release_bike }
    docking_station.dock(Bike.new)
    subject.ships_to_garage(docking_station.broken_bikes)
    expect(subject.bikes_in_van.count).to eq 1
  end
end
