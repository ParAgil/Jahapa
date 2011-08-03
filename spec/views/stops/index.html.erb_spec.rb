require 'spec_helper'

describe "stops/index.html.erb" do
  before(:each) do
    assign(:stops, [
      stub_model(Stop),
      stub_model(Stop)
    ])
  end

  it "renders a list of stops" do
    render
  end
end
