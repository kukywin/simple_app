require 'spec_helper'

describe "Static Pages" do

  describe "Home Pages" do
    it "should have the h1 'Simple App'" do
      visit "/static_pages/home"
      page.should have_selector('h1', :text => 'Simple App')
    end

    it "should have the base title " do
      visit "/static_pages/home"
      page.should have_selector('title', 
        :text => "Ruby on Rails Tutorial Simple App")
    end

    it "should not have a custom page title" do 
      visit "/static_pages/home"
      page.should have_selector('title', :text => "| Home")
    end
  end
end
 