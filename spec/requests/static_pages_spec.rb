require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "it should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1',:text => 'Sample App')
    end
		
		it "it should have title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',:text => 'Home')
    end

  end
	
  describe "Help Page" do
     it "it should have the h1 'Help'" do
       visit '/static_pages/help'
       page.should have_selector('h1',:text => 'Help')
    end
		it "it should have the title 'Help'" do
       visit '/static_pages/help'
       page.should have_selector('title',:text=>'Help')
    end

  end
  
  describe "About Page" do
     it "it should have h1 'About us'" do
       visit '/static_pages/about'
       page.should have_selector('h1',:text => 'About us')
    end
		it "it should have title 'About us'" do
       visit '/static_pages/about'
       page.should have_selector('title',:text => 'About us')
    end

  end

end
