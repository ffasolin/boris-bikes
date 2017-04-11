require "docking_station"

describe DockingStation do
  it "responds to release bike" do
    expect((DockingStation.new).release_bike).to eq true
  end
end
