require 'spec_helper'
describe 'Location' do
  before do
    @location = Location.new
  end
  
  describe 'Relationships' do
    before do
      @location.save!
      
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
    
    describe 'default name' do
      it 'should have a #default_location_name' do
        @location.default_location_name.should == nil
        @location.default_name_id = @location_name_1.id
        @location.default_location_name.should == @location_name_1
      end
      
      it 'should default to the first entered' do
        @location.default_name.should == @location_name_1
      end
      
      it 'should be customizable' do
        @location.default_name_id = @location_name_2.id
        @location.default_name.should == @location_name_2
        @location.default_location_name = @location_name_1
        @location.default_name.should == @location_name_1
      end
    end
  end

  describe 'latitude and longitude' do
    describe 'basic attribute usage' do
      it 'should have a lat' do
        @location.lat = '123'
        @location.lat.should == 123
      end

      it 'should have a long' do
        @location.long = '-123'
        @location.long.should == -123
      end
    end
    
    describe '#latlong=' do
      before do
        @location.latlong = "123, -225"
      end
      
      it 'sets the lat correctly' do
        @location.lat.should == 123
      end
      
      it 'sets the long correctly' do
        @location.long.should == -225
      end
    end
    
    describe '#latlong' do
      it 'makes it into a google parsable string' do
        @location.latlong = '444,-233'
        @location.latlong.should == "444, -233"
      end
    end
  end
  
  describe '#name' do
    it 'should have a name that is the default name' do
      @loc_1 = LocationName.create(:name => 'Manzana t', :location => @location)
      @location.default_name.should == @loc_1 # just checking the setup
      @location.name.should == @loc_1.name
    end
  
    it 'should not freak out if there are no location names' do
      expect { @location.name }.should_not raise_error
    end
  end  
end








