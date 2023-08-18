require 'rspec'
require 'parcels'

describe 'Parcel' do
  it 'is initialized with height, length, width, weight' do
    new_parcel = Parcel.new(2,2,2,3)
    new_parcel.should be_an_instance_of Parcel
  end

  it 'calculates volume when volume method is called' do
    new_parcel = Parcel.new(2,3,2,8)
    new_parcel.find_volume.should eq 12
  end

  it 'calculates te cost to ship when cost method is called' do
    new_parcel = Parcel.new(2,3,2,8)
    new_parcel.cost_to_ship.should eq 40
  end
end
