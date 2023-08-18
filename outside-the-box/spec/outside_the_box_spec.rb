require 'rspec'
require 'outside_the_box'

describe 'Box' do
  it 'initializes a quadrilateral when given length and width' do
    new_box = Box.new(2, 3)
    new_box.should be_an_instance_of Box
  end

  it 'returns "Square" for a square quadrilateral input' do
    new_box = Box.new(2,2)
    new_box.find_type.should eq "Square"
  end

  it 'returns "Rectangle" for a rectangular quadrilateral input' do
    new_box = Box.new(4,8)
    new_box.find_type.should eq "Rectangle"
  end
end
