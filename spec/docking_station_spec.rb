require "docking_station"

describe DockingStation do
  it "responds to release bike" do
    expect((DockingStation.new).release_bike).to be_a Bike
  end
  it "checks whether the bike is working" do
    expect((Bike.new).working?).to eq true
  end
end
