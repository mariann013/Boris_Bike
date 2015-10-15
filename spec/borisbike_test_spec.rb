require 'DockingStation.rb'

describe DockingStation do
let(:bike) { double("bike", :working => true) }

  it { is_expected.to respond_to :release_bike }

  it "expect default bike to work" do
    expect(bike.working).to eq true 
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "return no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "can not release a broken bike" do
    subject.dock_bike( double("bike1", :working => false))
    expect { subject.release_bike }.to raise_error "Sorry bike is broken" 

  end

  it "return bike to docking station" do

    subject.capacity.times { subject.dock_bike(bike) }
    expect { subject.dock_bike(bike) }.to raise_error "Docking Station full"
  end

end
