require 'spec_helper'

describe "location_names/index.html.erb" do
  before(:each) do
    assign(:location_names, [
      stub_model(LocationName),
      stub_model(LocationName)
    ])
  end

  it "renders a list of location_names" do
    render
  end
end
