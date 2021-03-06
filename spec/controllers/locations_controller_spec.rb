require 'spec_helper'

describe LocationsController do

  def mock_location(stubs={})
    (@mock_location ||= mock_model(Location).as_null_object).tap do |location|
      location.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all locations as @locations" do
      Location.stub(:all) { [mock_location] }
      get :index
      assigns(:locations).should eq([mock_location])
    end
    
    it 'assigns specific locations if names param is passed' do
      Location.stub(:from_names) { [mock_location] }
      get :index, {:start_location => 'foo', :end_location => 'bar'}
      assigns(:locations).should eq([mock_location])
    end    
  end

  describe "GET show" do
    it "assigns the requested location as @location" do
      Location.stub(:find).with("37") { mock_location }
      get :show, :id => "37"
      assigns(:location).should be(mock_location)
    end
  end

  describe "GET new" do
    it "assigns a new location as @location" do
      Location.stub(:new) { mock_location }
      get :new
      assigns(:location).should be(mock_location)
    end
  end

  describe "GET edit" do
    it "assigns the requested location as @location" do
      Location.stub(:find).with("37") { mock_location }
      get :edit, :id => "37"
      assigns(:location).should be(mock_location)
    end
  end

  describe "POST create" do
    it 'should not be allowed, and just manual now' do
      lambda{ post :create, :location => {'these' => 'params'} }.should raise_error("Can't post yet")
    end
    
    describe "with valid params" do
      before do
        pending 'not allowing creation of locations yet'
      end
      
      it "assigns a newly created location as @location" do
        Location.stub(:new).with({'these' => 'params'}) { mock_location(:save => true) }
        post :create, :location => {'these' => 'params'}
        assigns(:location).should be(mock_location)
      end

      it "redirects to the created location" do
        Location.stub(:new) { mock_location(:save => true) }
        post :create, :location => {}
        response.should redirect_to(location_url(mock_location))
      end
    end

    describe "with invalid params" do
      before do
        pending 'not allowing creation of locations yet'
      end
      
      it "assigns a newly created but unsaved location as @location" do
        Location.stub(:new).with({'these' => 'params'}) { mock_location(:save => false) }
        post :create, :location => {'these' => 'params'}
        assigns(:location).should be(mock_location)
      end

      it "re-renders the 'new' template" do
        Location.stub(:new) { mock_location(:save => false) }
        post :create, :location => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do
    it 'should not be allowed, and just manual now' do
      lambda { put :update, :id => "37", :location => {'these' => 'params'} }.should raise_error("Can't update yet!")
    end
    
    describe "with valid params" do
      before do
        pending 'not allowing update of locations yet'
      end
      
      it "updates the requested location" do
        Location.should_receive(:find).with("37") { mock_location }
        mock_location.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :location => {'these' => 'params'}
      end

      it "assigns the requested location as @location" do
        Location.stub(:find) { mock_location(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:location).should be(mock_location)
      end

      it "redirects to the location" do
        Location.stub(:find) { mock_location(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(location_url(mock_location))
      end
    end

    describe "with invalid params" do
      before do
        pending 'not allowing update of locations yet'
      end

      it "assigns the location as @location" do
        Location.stub(:find) { mock_location(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:location).should be(mock_location)
      end

      it "re-renders the 'edit' template" do
        Location.stub(:find) { mock_location(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it 'should not be allowed, and just manual now' do
      lambda { delete :destroy, :id => "37" }.should raise_error "Can't delete yet!"
    end

    describe 'Deletion' do 
      before do
        pending 'not allowing deletion of locations yet'
      end
    
      it "destroys the requested location" do
        Location.should_receive(:find).with("37") { mock_location }
        mock_location.should_receive(:destroy)
        delete :destroy, :id => "37"
      end

      it "redirects to the locations list" do
        Location.stub(:find) { mock_location }
        delete :destroy, :id => "1"
        response.should redirect_to(locations_url)
      end
    end
  end
end
