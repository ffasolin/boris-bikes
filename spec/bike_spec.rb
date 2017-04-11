require 'bike'

describe Bike do
  it 'responds to working?' do
    expect((Bike.new).working?).to eq true
  end
end
