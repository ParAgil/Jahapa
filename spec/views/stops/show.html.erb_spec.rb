require 'spec_helper'

describe "stops/show.html.erb" do
  before(:each) do
    @stop = assign(:stop, stub_model(Stop))
  end

  it "renders attributes in <p>" do
    render
  end
end
