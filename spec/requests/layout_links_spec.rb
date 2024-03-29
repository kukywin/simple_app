require 'spec_helper'

describe "LayoutLinks" do
  # describe "GET 'home'" do
  #   it "should be successful" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get 'home'
  #     response.should be_success
  #   end

    it "should have a Home page at '/'" do
    	get '/'
    	response.should have_selector('title', :content => "Home")
    end
    it "should have a Contact page at '/contact'" do
    	get '/contact'
    	response.should have_selector('title', :content => "Contact")
    end
    it "should have a About page at '/about'" do
    	get '/about'
    	response.should have_selector('title', :content => "About")
    end
    it "should have a Help page at '/help'" do
    	get '/help'
    	response.should have_selector('title', :content => "Help")
    end
  end
end
