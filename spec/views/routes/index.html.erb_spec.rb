require 'spec_helper'

describe "routes/index.html.erb" do
  before(:each) do
    assign(:routes, [
      stub_model(Route),
      stub_model(Route)
    ])
  end

  it "renders a list of routes" do
    render
  end
end
