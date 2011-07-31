require 'spec_helper'

describe 'Relationships' do
  before do
    @location = Location.create
    @location_name_1 = LocationName.create :location_id => @location.id
    @location_name_2 = LocationName.create :location_id => @location.id
  end
  
  it 'should have many location names' do
    @location.location_names.should == [@location_name_1, @location_name_2]
  end
  
  it 'should have many routes'
end