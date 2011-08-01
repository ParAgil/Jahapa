require 'spec_helper'
describe 'Location Name' do
  describe 'Relationships' do
    before do
      @location = Location.create
      @location_name = LocationName.create :location_id => @location.id
    end
    
    it 'should have a location' do
      @location_name.location.should == @location
    end
  end
end