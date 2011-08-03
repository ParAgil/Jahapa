require 'spec_helper'

describe "location_names/edit.html.erb" do
  before(:each) do
    @location_name = assign(:location_name, stub_model(LocationName))
  end

  it "renders the edit location_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => location_name_path(@location_name), :method => "post" do
    end
  end
end
