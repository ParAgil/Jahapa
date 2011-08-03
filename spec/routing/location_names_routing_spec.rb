require "spec_helper"

describe LocationNamesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/location_names" }.should route_to(:controller => "location_names", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/location_names/new" }.should route_to(:controller => "location_names", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/location_names/1" }.should route_to(:controller => "location_names", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/location_names/1/edit" }.should route_to(:controller => "location_names", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/location_names" }.should route_to(:controller => "location_names", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/location_names/1" }.should route_to(:controller => "location_names", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/location_names/1" }.should route_to(:controller => "location_names", :action => "destroy", :id => "1")
    end

  end
end
