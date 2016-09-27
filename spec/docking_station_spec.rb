require 'docking_station'

describe DockingStation do
  it 'docks something' do
    bike = Bike.new
    # We want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end
  it { is_expected.to respond_to :release_bike }
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it { is_expected.to respond_to(:bike) }
end
