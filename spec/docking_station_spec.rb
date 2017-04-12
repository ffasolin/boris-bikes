require "docking_station"
require "bike"

describe DockingStation do

  it "responds to release bike" do
    expect((DockingStation.new).release_bike).to be_a Bike
  end

  it "checks whether the bike is working" do
    expect((Bike.new).working?).to eq true
  end

  it "docks a bike at a station" do
    expect((DockingStation.new).return_bike).to eq true
  end

  it "shows docked bike" do
    expect((Bike.new).docked?).to eq true
  end
end
