require 'spec_helper'
describe 'Location Name' do
  before do
    @location = Location.create    
    @location_name = LocationName.create :location_id => @location.id
  end
  describe 'Relationships' do
    it 'should have a location' do
      @location_name.location.should == @location
    end
  end
  it 'should have a name' do
    @location_name.name = 'Shopping Mcal Lopez'
    @location_name.name.should == 'Shopping Mcal Lopez'
  end
end