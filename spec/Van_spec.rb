require './lib/Van'

describe Van do

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "return no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "broken bikes array from docking station is the same as the array in van"
  

end
