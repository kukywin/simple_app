require 'spec_helper'

describe "Static Pages" do

  let(:base_title) {"Ruby on Rails Tutorial Simple App"}
  describe "Contact Pages" do
    it "should have the h1 'Contact'" do
      visit "/static_pages/contact"
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title '| Contact2'" do
      visit "/static_pages/contact"
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end
 