require 'boris_bike'

describe DockingStation do
  it " creates an instance of DockingStation" do
    expect(DockingStation).to eq DockingStation
  end

 it 'expects DockingStation to respond to release_bike method' do
   docking_station = DockingStation.new("bike")
   expect(docking_station).to respond_to(:release_bike)
  end

 it 'expects DockingStation to get a bike' do
   docking_station = DockingStation.new("bike")
   expect(docking_station.release_bike).to be_an_instance_of(Bike)
end

it 'expects bike to be working' do
  docking_station = DockingStation.new("bike")
  expect(docking_station.release_bike.working?).to eq true
 end

 it 'expects docking_station to be initialized with an argument' do
   docking_station = DockingStation.new("bike")
 expect(docking_station).to respond_to(:dock).with(1).argument
 end

 it 'expects docking_station to respond to the dock method' do
   docking_station = DockingStation.new("bike")
   expect(docking_station).to respond_to(:dock)
 end
end


#expect(obj).to respond_to(:foo).with(1).argument
