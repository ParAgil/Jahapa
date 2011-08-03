require "spec_helper"

describe StopsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/stops" }.should route_to(:controller => "stops", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/stops/new" }.should route_to(:controller => "stops", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/stops/1" }.should route_to(:controller => "stops", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/stops/1/edit" }.should route_to(:controller => "stops", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/stops" }.should route_to(:controller => "stops", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/stops/1" }.should route_to(:controller => "stops", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/stops/1" }.should route_to(:controller => "stops", :action => "destroy", :id => "1")
    end

  end
end
