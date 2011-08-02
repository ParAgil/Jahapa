require 'spec_helper'

describe "locations/show.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location))
  end

  it "renders attributes in <p>" do
    render
  end
end
