require 'spec_helper'

describe "stops/edit.html.erb" do
  before(:each) do
    @stop = assign(:stop, stub_model(Stop))
  end

  it "renders the edit stop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stop_path(@stop), :method => "post" do
    end
  end
end
