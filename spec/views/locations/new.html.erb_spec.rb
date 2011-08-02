require 'spec_helper'

describe "locations/new.html.erb" do
  before(:each) do
    assign(:location, stub_model(Location).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
    end
  end
end
