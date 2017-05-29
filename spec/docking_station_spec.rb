require 'docking_station'
require 'bike'

describe DockingStation do
  it 'releases 20 bikes per station' do
    error = 'No bike available'
    expect { (DockingStation::DEFAULT_CAPACITY + 1).times { subject.release_bike } }.to raise_error(error)
  end

  describe '#release_bike' do
    it 'releases working bikes' do
      expect(subject.release_bike).to be_working
    end
  end
  describe '#dock' do
    it 'asks user if bike is broken when docking' do
      bike = subject.release_bike
      subject.dock(bike)
      expect((subject.bikes.include? bike)).to eq false
    end
    it 'asks user if bike is broken when docking' do
      bike = subject.release_bike
      subject.dock(bike)
      error = 'No bike available'
      expect { 20.times { subject.release_bike } }.to raise_error error
    end
    it 'docks the bike and returns its instance' do
      bike = Bike.new
      subject.release_bike
      expect { subject.dock(bike) }.to_not raise_error
    end
    it 'bikes cannot be docked when station is full' do
      bike = subject.release_bike
      subject.dock(bike)
      expect { subject.dock(bike) }.to raise_error 'Docking station is full'
    end
    it 'when a docking station is created for 25 bikes' do
      allow_any_instance_of(DockingStation).to receive(:capacity) { 25 }
      puts 'Set station to store 25 bikes'
      expect(subject.capacity).to eq 25
    end
  end
  describe '.working?' do
    let(:bike) { double :bike }
    it 'releases working bikes' do
      allow(bike).to receive(:working?) { true }
      subject.release_bike
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end
  end
end
