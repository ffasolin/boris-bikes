require 'bike'

describe Bike do
  it 'responds to working?' do
    expect((Bike.new).working?).to eq true
  end
  it "shows docked bike" do
    expect((Bike.new).docked?).to eq true
  end
end
