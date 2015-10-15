require './lib/Van'

describe Van do
	let(:bike) { double("bike", :working? => false) }
  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "return no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "broken bikes array from docking station is the same as the array in van" do
  	bikes = []
  	10.times { bikes << bike }
  	bikes.each { |b| subject.dock_bike(b) } 
  	expect(subject.get_broken_bikes).to eq bikes
  end
  

end
