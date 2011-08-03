require 'spec_helper'

describe StopsController do

  def mock_stop(stubs={})
    (@mock_stop ||= mock_model(Stop).as_null_object).tap do |stop|
      stop.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all stops as @stops" do
      Stop.stub(:all) { [mock_stop] }
      get :index
      assigns(:stops).should eq([mock_stop])
    end
  end

  describe "GET show" do
    it "assigns the requested stop as @stop" do
      Stop.stub(:find).with("37") { mock_stop }
      get :show, :id => "37"
      assigns(:stop).should be(mock_stop)
    end
  end

  describe "GET new" do
    it "assigns a new stop as @stop" do
      Stop.stub(:new) { mock_stop }
      get :new
      assigns(:stop).should be(mock_stop)
    end
  end

  describe "GET edit" do
    it "assigns the requested stop as @stop" do
      Stop.stub(:find).with("37") { mock_stop }
      get :edit, :id => "37"
      assigns(:stop).should be(mock_stop)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created stop as @stop" do
        Stop.stub(:new).with({'these' => 'params'}) { mock_stop(:save => true) }
        post :create, :stop => {'these' => 'params'}
        assigns(:stop).should be(mock_stop)
      end

      it "redirects to the created stop" do
        Stop.stub(:new) { mock_stop(:save => true) }
        post :create, :stop => {}
        response.should redirect_to(stop_url(mock_stop))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stop as @stop" do
        Stop.stub(:new).with({'these' => 'params'}) { mock_stop(:save => false) }
        post :create, :stop => {'these' => 'params'}
        assigns(:stop).should be(mock_stop)
      end

      it "re-renders the 'new' template" do
        Stop.stub(:new) { mock_stop(:save => false) }
        post :create, :stop => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested stop" do
        Stop.should_receive(:find).with("37") { mock_stop }
        mock_stop.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :stop => {'these' => 'params'}
      end

      it "assigns the requested stop as @stop" do
        Stop.stub(:find) { mock_stop(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:stop).should be(mock_stop)
      end

      it "redirects to the stop" do
        Stop.stub(:find) { mock_stop(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(stop_url(mock_stop))
      end
    end

    describe "with invalid params" do
      it "assigns the stop as @stop" do
        Stop.stub(:find) { mock_stop(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:stop).should be(mock_stop)
      end

      it "re-renders the 'edit' template" do
        Stop.stub(:find) { mock_stop(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested stop" do
      Stop.should_receive(:find).with("37") { mock_stop }
      mock_stop.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the stops list" do
      Stop.stub(:find) { mock_stop }
      delete :destroy, :id => "1"
      response.should redirect_to(stops_url)
    end
  end

end
