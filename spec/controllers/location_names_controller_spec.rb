require 'spec_helper'

describe LocationNamesController do

  def mock_location_name(stubs={})
    (@mock_location_name ||= mock_model(LocationName).as_null_object).tap do |location_name|
      location_name.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all location_names as @location_names" do
      LocationName.stub(:all) { [mock_location_name] }
      get :index
      assigns(:location_names).should eq([mock_location_name])
    end
  end

  describe "GET show" do
    it "assigns the requested location_name as @location_name" do
      LocationName.stub(:find).with("37") { mock_location_name }
      get :show, :id => "37"
      assigns(:location_name).should be(mock_location_name)
    end
  end

  describe "GET new" do
    it "assigns a new location_name as @location_name" do
      LocationName.stub(:new) { mock_location_name }
      get :new
      assigns(:location_name).should be(mock_location_name)
    end
  end

  describe "GET edit" do
    it "assigns the requested location_name as @location_name" do
      LocationName.stub(:find).with("37") { mock_location_name }
      get :edit, :id => "37"
      assigns(:location_name).should be(mock_location_name)
    end
  end

  describe "POST create" do
    it 'should not allow creation, and just manual now' do
      lambda { post :create, :location_name => {'these' => 'params'} }.should raise_error("Can't create yet!")
    end
    
    describe "with valid params" do
      before do
        pending 'not allowing location_names creation yet'
      end
      it "assigns a newly created location_name as @location_name" do
        LocationName.stub(:new).with({'these' => 'params'}) { mock_location_name(:save => true) }
        post :create, :location_name => {'these' => 'params'}
        assigns(:location_name).should be(mock_location_name)
      end

      it "redirects to the created location_name" do
        LocationName.stub(:new) { mock_location_name(:save => true) }
        post :create, :location_name => {}
        response.should redirect_to(location_name_url(mock_location_name))
      end
    end

    describe "with invalid params" do
      before do
        pending 'not allowing location_names creation yet'
      end
      
      it "assigns a newly created but unsaved location_name as @location_name" do
        LocationName.stub(:new).with({'these' => 'params'}) { mock_location_name(:save => false) }
        post :create, :location_name => {'these' => 'params'}
        assigns(:location_name).should be(mock_location_name)
      end

      it "re-renders the 'new' template" do
        LocationName.stub(:new) { mock_location_name(:save => false) }
        post :create, :location_name => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do
    it 'should not allow update, and just manual now' do
      lambda { put :update, :id => "37", :location_name => {'these' => 'params'} }.should raise_error("Can't update yet!")
    end
    
    describe "with valid params" do
      before do
        pending 'not allowing location_names update yet'
      end
      
      it "updates the requested location_name" do
        LocationName.should_receive(:find).with("37") { mock_location_name }
        mock_location_name.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :location_name => {'these' => 'params'}
      end

      it "assigns the requested location_name as @location_name" do
        LocationName.stub(:find) { mock_location_name(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:location_name).should be(mock_location_name)
      end

      it "redirects to the location_name" do
        LocationName.stub(:find) { mock_location_name(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(location_name_url(mock_location_name))
      end
    end

    describe "with invalid params" do
      before do
        pending 'not allowing location_names update yet'
      end

      it "assigns the location_name as @location_name" do
        LocationName.stub(:find) { mock_location_name(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:location_name).should be(mock_location_name)
      end

      it "re-renders the 'edit' template" do
        LocationName.stub(:find) { mock_location_name(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it 'should not allow deletion, and just manual now' do
      lambda { delete :destroy, :id => "37" }.should raise_error("Can't delete yet!")
    end
    
    describe 'Deletion' do
      before do
        pending 'not allowing location_names deletion yet'
      end
      
      it "destroys the requested location_name" do
        LocationName.should_receive(:find).with("37") { mock_location_name }
        mock_location_name.should_receive(:destroy)
        delete :destroy, :id => "37"
      end

      it "redirects to the location_names list" do
        LocationName.stub(:find) { mock_location_name }
        delete :destroy, :id => "1"
        response.should redirect_to(location_names_url)
      end
    end
  end

end
