require 'bike'

describe Bike do
  describe '.working?' do
    it { should respond_to :working? }
  end
end
