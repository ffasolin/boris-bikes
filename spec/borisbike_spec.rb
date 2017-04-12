require 'boris_bike'

describe DockingStation do
  it " creates an instance of DockingStation" do
    expect(DockingStation).to eq DockingStation
  end

 it 'expects DockingStation to respond to release_bike method' do
   expect(DockingStation.new).to respond_to(:release_bike)
  end
end
