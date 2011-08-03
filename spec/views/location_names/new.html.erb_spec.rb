require 'spec_helper'

describe "location_names/new.html.erb" do
  before(:each) do
    assign(:location_name, stub_model(LocationName).as_new_record)
  end

  it "renders new location_name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => location_names_path, :method => "post" do
    end
  end
end
