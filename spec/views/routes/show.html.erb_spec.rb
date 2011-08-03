require 'spec_helper'

describe "routes/show.html.erb" do
  before(:each) do
    @route = assign(:route, stub_model(Route))
  end

  it "renders attributes in <p>" do
    render
  end
end
