require 'spec_helper'

describe "LocationNames" do
  describe "GET /location_names" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get location_names_path
      response.status.should be(200)
    end
  end
end
