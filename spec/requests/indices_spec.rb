require 'spec_helper'

describe "Indices" do
  describe "GET /index" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get 'index#index'
      response.status.should be(200)
    end
    
    it "Find me in app/views/index/index.html.erb" do
          visit '/index/index'
      page.should have_content('Good Morning')
      page.should have_content('Connect with Instagram')
    end
  end
end
