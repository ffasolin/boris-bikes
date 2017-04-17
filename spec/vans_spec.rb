require 'vans'
require 'garage'

describe Vans do
  it 'should take broken bikes to garages' do
    subject.ships_to_garage
    Garage.new.fix
    expect(DockingStation.new.broken_bikes.count).to eq 0
  end
end
