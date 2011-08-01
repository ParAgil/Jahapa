require 'spec_helper'
describe 'Location' do
  before do
    @location = Location.create
  end
  describe 'Relationships' do
    before do
      @route_1 = Route.create
      @location_name_1 = LocationName.create :location_id => @location.id
      @location_name_2 = LocationName.create :location_id => @location.id
      @stop_1 = Stop.create :location_id => @location.id, :route_id => @route_1.id
    end
  
    it 'should have many location_names' do
      @location.location_names.should == [@location_name_1, @location_name_2]
    end
  
    it 'should have many stops' do
      @location.stops.should == [@stop_1]
    end
  
    it 'should have many routes' do
      @location.routes.should == [@route_1]
    end
  end

  it 'should have a latlong' do
    @location.latlong = '123,-321'
    @location.latlong.should == '123,-321'
  end
  
  it 'should have a name' do
    @location.name = 'Facultad'
    @location.name.should == 'Facultad'
  end
end