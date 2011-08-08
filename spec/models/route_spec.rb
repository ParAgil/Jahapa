require 'spec_helper'
describe 'Route' do
  describe 'relationships' do
    before :all do
      @route = Route.create
      @route_locations = [
        Location.create,
        Location.create
      ]
    
      @non_route_location = Location.create
      
      @route_stops = [
        Stop.create(:route_id => @route.id, :location_id => @route_locations.first.id),
        Stop.create(:route_id => @route.id, :location_id => @route_locations.last.id)
      ]
      
      @non_routes_stops = [
        Stop.create(:location_id => @non_route_location.id)
      ]
    end
    
    it 'should have many stops' do
      @route.stops.size.should == 2
      @route.stops.should include *@route_stops
    end
    
    it 'should have many locations' do
      @route.locations.size.should == 2
      @route.locations.should include *@route_locations
    end
  end
  
  describe 'basic attributes' do
    it 'should have a name' do
      @route = Route.new
      @route.name = 'Linea 49'
      @route.name.should == 'Linea 49'
    end
  end
  
  describe '.from_locations' do
    before :all do
      Route.destroy_all
      Location.destroy_all
      LocationName.destroy_all
      
      @location_names = [
        LocationName.create(:name => 'foo'),
        LocationName.create(:name => 'bar')
      ]
      
      @route = Route.create
      @route.locations.create
      @route.locations.create
      @route.locations.each_with_index do |loc, index|
        loc.names << @location_names[index]
        loc.save
      end
      
      @route_2 = Route.create
      @route_2.locations << @route.locations
      @route_2.save
      
      
      @other_route = Route.create
      @other_route.locations.create
      @other_route.locations.create
      names = ['zardoz', 'andy']
      @other_route.locations.each_with_index do |loc, index|
        loc.names.create(:name => names[index])
      end
      
    end
    
    it 'should find the location names from the params' do
      LocationName.should_receive(:from_name).twice do |name|
        ['foo', 'bar'].should include(name)
        LocationName.first
      end
      Route.from_locations :start_location => 'foo', :end_location => 'bar' 
    end
    
    it 'returns all routes that have both locations' do
      Route.from_locations( :start_location => 'foo', :end_location => 'bar' ).should == [@route, @route_2]
    end
    
    it 'returns an empty set if either location is not found' do
      Route.from_locations(:start_location => 'foo', :end_location => 'not here dude').should == []
    end
    
    it 'returns an empty set if no intersections are found' do
      Route.from_locations(:start_location => 'bar', :end_location => 'zardoz').should == []
    end
  end
end