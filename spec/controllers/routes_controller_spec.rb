require 'spec_helper'

describe RoutesController do
  render_views
  def mock_route(stubs={})
    (@mock_route ||= mock_model(Route).as_null_object).tap do |route|
      route.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it " finds particualr routes and assigns them as @routes" do
      Route.stub(:from_locations) { [mock_route] }
      get :index, {:start_location => 'foo', :end_location => 'bar'} 
      assigns(:routes).should eq([mock_route])
    end
    
    it "assigns all routes if it doesn't have the right params" do
      Route.stub(:all) { [mock_route] }
      get :index
      assigns(:routes).should eq([mock_route])
    end
    
    it 'doesnt return the full layout when format is xhr' do
      Route.stub(:all) { [mock_route] }
      xhr :get, :index
      response.body.should_not include('header')
    end
    
    it 'returns the full layout when format is not xhr' do
      Route.stub(:all) { [mock_route] }
      get :index, {}
      response.body.should include('header')
    end
  end

  describe "GET show" do
    it "assigns the requested route as @route" do
      Route.stub(:find).with("37") { mock_route }
      get :show, :id => "37"
      assigns(:route).should be(mock_route)
    end
  end

  describe "GET new" do
    it "assigns a new route as @route" do
      Route.stub(:new) { mock_route }
      get :new
      assigns(:route).should be(mock_route)
    end
  end

  describe "GET edit" do
    it "assigns the requested route as @route" do
      Route.stub(:find).with("37") { mock_route }
      get :edit, :id => "37"
      assigns(:route).should be(mock_route)
    end
  end

  describe "POST create" do
    it 'should not be allowed, and just be manual now' do
      lambda{ post :create, :route => {'these' => 'params'} }.should raise_error("Can't post yet!")
    end
    
    describe "with valid params" do
      before do
        pending 'not allowing creation of routes yet'
      end
      it "assigns a newly created route as @route" do
        Route.stub(:new).with({'these' => 'params'}) { mock_route(:save => true) }
        post :create, :route => {'these' => 'params'}
        assigns(:route).should be(mock_route)
      end

      it "redirects to the created route" do
        Route.stub(:new) { mock_route(:save => true) }
        post :create, :route => {}
        response.should redirect_to(route_url(mock_route))
      end
    end

    describe "with invalid params" do
      before do
        pending 'not allowing creation of routes yet'
      end
      it "assigns a newly created but unsaved route as @route" do
        Route.stub(:new).with({'these' => 'params'}) { mock_route(:save => false) }
        post :create, :route => {'these' => 'params'}
        assigns(:route).should be(mock_route)
      end

      it "re-renders the 'new' template" do
        Route.stub(:new) { mock_route(:save => false) }
        post :create, :route => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do
    it 'should not be allowed, and just manual now' do
      lambda { put :update, :id => "37", :route => {'these' => 'params'} }.should raise_error("Can't update yet!")
    end
    describe "with valid params" do
      before do
        pending 'Not allowing update of routes yet'
      end
      
      it "updates the requested route" do
        Route.should_receive(:find).with("37") { mock_route }
        mock_route.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :route => {'these' => 'params'}
      end

      it "assigns the requested route as @route" do
        Route.stub(:find) { mock_route(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:route).should be(mock_route)
      end

      it "redirects to the route" do
        Route.stub(:find) { mock_route(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(route_url(mock_route))
      end
    end

    describe "with invalid params" do
      before do
        pending 'Not allowing update of routes yet'
      end
      
      it "assigns the route as @route" do
        Route.stub(:find) { mock_route(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:route).should be(mock_route)
      end

      it "re-renders the 'edit' template" do
        Route.stub(:find) { mock_route(:update_attributes => false) }
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
        pending 'Not allowing deletion yet'
      end 
      
      it "destroys the requested route" do
        Route.should_receive(:find).with("37") { mock_route }
        mock_route.should_receive(:destroy)
        delete :destroy, :id => "37"
      end

      it "redirects to the routes list" do
        Route.stub(:find) { mock_route }
        delete :destroy, :id => "1"
        response.should redirect_to(routes_url)
      end
    end
  end

end
