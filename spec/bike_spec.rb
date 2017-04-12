require 'boris_bike'

describe Bike do


it 'expects bike to be working' do
  bike = Bike.new
  expect(bike.working?).to eq true
 end
end
