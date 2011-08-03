require 'spec_helper'

describe "routes/new.html.erb" do
  before(:each) do
    assign(:route, stub_model(Route).as_new_record)
  end

  it "renders new route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => routes_path, :method => "post" do
    end
  end
end
