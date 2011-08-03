require 'spec_helper'

describe "location_names/show.html.erb" do
  before(:each) do
    @location_name = assign(:location_name, stub_model(LocationName))
  end

  it "renders attributes in <p>" do
    render
  end
end
