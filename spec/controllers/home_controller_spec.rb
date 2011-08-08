require 'spec_helper'

describe HomeController do
  render_views
    
  it "renders the search form" do
    get :index
    response.body.should include "Subir cerca de:"
  end
end
