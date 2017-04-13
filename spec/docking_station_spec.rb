require "docking_station"
require "bike"

describe DockingStation do

  it { is_expected.to respond_to(:release_bike)}
  # it "responds to release bike" do
  #   expect((DockingStation.new).release_bike).to be_a Bike
  # end

  it "checks whether the bike is working" do
    expect((Bike.new).working?).to eq true
  end

  it { is_expected.to respond_to(:return_bike) }
  # it "docks a bike at a station" do
  #   expect((DockingStation.new).return_bike).to eq true
  # end

  it "raises an error when no bikes are available" do
    expect { subject.release_bike != Bike }.to raise_error "No bikes available."
  end

end
