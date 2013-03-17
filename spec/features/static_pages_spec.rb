require 'spec_helper'

#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end

describe "Static pages" do
  describe "Home page" do
    before { visit root_path }
#    it "should have the content 'Sample App'" do 
#      visit '/static_pages/home'
#      page.should have_content('Sample App')
#    end 
     it "should have the h1 'Sample App'" do
       page.should have_selector('h1', text: 'Sample App')
     end

     it "should have the title 'Home'" do
	     page.should have_selector('title',
				  text: 'Sample App')
     end
  end

  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      page.should have_content('Help')
    end
  end

  describe "About page" do
    before { visit about_path }
    it "should have the content 'About Us'" do
      page.should have_content('About Us')
    end
  end
end
