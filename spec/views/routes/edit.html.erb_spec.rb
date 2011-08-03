require 'spec_helper'

describe "routes/edit.html.erb" do
  before(:each) do
    @route = assign(:route, stub_model(Route))
  end

  it "renders the edit route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => route_path(@route), :method => "post" do
    end
  end
end
