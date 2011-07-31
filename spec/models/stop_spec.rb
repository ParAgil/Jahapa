require 'spec_helper'

describe 'Stop' do
  before do
    @location = Location.create
    @route = Route.create
    @stop = Stop.create :location_id => @location.id, :route_id => @route.id
  end
  
  it 'should have a location' do
    @stop.location.should == @location
  end
  
  it 'should have a route' do
    @stop.route.should == @route
  end
end