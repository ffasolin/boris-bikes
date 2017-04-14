require 'bike'
require 'docking_station'

describe DockingStation do

   it "releases #{DockingStation::DEFAULT_CAPACITY} bikes per station" do
    docking_station = DockingStation.new
    expect { (DockingStation::DEFAULT_CAPACITY + 1).times { subject.release_bike } }.to raise_error("No bike available")
   end

  describe "#release_bike" do

    it "should be an instace of bike" do
      Bike.class
    end

    it 'releases working bikes' do
      expect(subject.release_bike).to be_working
    end

  end

  describe "#dock" do

    it "should dock the bike by returning its instance" do
      bike = Bike.new
      station = DockingStation.new
      station.release_bike
      expect { station.dock(bike) }.to_not raise_error
    end

    it "shouldn't let someone dock a bike when it's full" do
      station = DockingStation.new
      bike = station.release_bike
      station.dock(bike)
      expect{subject.dock(bike)}.to raise_error "Docking station is full"
    end

  end
  
end
