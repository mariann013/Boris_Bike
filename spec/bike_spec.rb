require 'Bike'

describe Bike do

  it { is_expected.to respond_to :working }

  it "can be reported to be broken" do
  	bike = Bike.new
  	bike.working = false
  	expect(bike.working).to eq false 
  end

end
