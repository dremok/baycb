require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the h1 'Be All You Can Be'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Be All You Can Be")
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Be All You Can Be | Home")
    end
  end
  
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Be All You Can Be | Help")
    end
  end
  
  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Be All You Can Be | About Us")
    end
  end
  
end
