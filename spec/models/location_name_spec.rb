# coding: UTF-8
require 'spec_helper'

describe 'Location Name' do
  before do
    @location = Location.create
    @name = LocationName.create :location_id => @location.id, :name => 'Foo'
  end
  
  describe 'Relationships' do
    it 'should have a location' do
      @name.location.should == @location
    end
  end
  
  describe 'name stuff' do
    describe 'reading' do
      it 'should have a name' do
        @name[:name] = 'Shopping Mcal Lopez'
        @name.name.should == 'Shopping Mcal Lopez'
      end
    end
    
    describe 'writing' do
      it 'should call LocationName.normalize' do
        LocationName.should_receive(:normalize).and_return('foo')
        @name.name = 'foo'
        @name.name.should == 'foo'
      end
    end
    
    describe '.normalize' do 
     it 'should title case everything' do
        @name.name = "shoPping mariscal lopez"
        @name.name.should == 'Shopping Mariscal Lopez'
      end

      it 'should remove .' do
        @name.name = "Shopping mcal. lopez"
        @name.name.should_not include '.'
      end

      it 'should remove ,' do
        @name.name = "Shopping, Mcal. Lopez"
        @name.name.should_not include ','
      end

      {'á' => 'a', 'é' => 'e', 'í' => 'i', 'ó' => 'o', 'ú' => 'u'}.each do |original, transformed|
        it "should transform #{original} to #{transformed}" do
          @name.name = "D#{original}"
          @name.name.should == "D#{transformed}"
        end
      end

      it 'transforms the abbreviation for mariscal' do
        @name.name = 'mcal'
        @name.name.should == 'Mariscal'
      end

      it 'transforms the abbreviation for teniente' do
        @name.name = 'tte'
        @name.name.should == 'Teniente'
      end

      it 'transforms the abbreviation for capitan' do
        @name.name = 'cap'
        @name.name.should == 'Capitan'
      end
      
      it 'transforms the abbreviation for fernando' do
        @name.name = 'fdo'
        @name.name.should == 'Fernando'
      end

      it 'should remove extra spaces' do
        @name.name = ' cap   foo'
        @name.name.should == "Capitan Foo"
      end
    end
  end
  
  describe '.from_name' do
    it 'will normalize the name' do
      LocationName.should_receive(:normalize).and_return('Foo')
      LocationName.from_name('foo')
    end
  
    it 'searches for matches on the name' do
      LocationName.from_name('foo').should == @name
    end
    
    it 'returns nil if it does not find anything' do
      LocationName.from_name('bar').should == nil
    end
  end
end