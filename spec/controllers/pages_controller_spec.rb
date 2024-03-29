require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
      response.body.should have_selector('h1', content: 'Home')
    end
  end

  describe "Visit 'home'" do
    it "returns http success" do
      visit '/home'
      response.should be_success
      page.should have_selector('h1', content: 'Home')
    end
  end

   describe "Visit 'home' 2" do
    it "returns http success" do
      visit '/home'
      response.should be_success
      page.body.should have_selector('h1', content: 'Home')
    end
   end


   describe "Visit 'home' 3" do
    it "returns http success" do
      visit 'home'
      response.should be_success
      page.body.should have_selector('h1', content: 'Home')
    end
  end

   describe "Visit 'home' 4" do
    it "returns http success" do
      visit 'home'
      response.should be_success
      page.should have_selector('h1', content: 'Home')
    end
  end

  describe "GET 'cookies'" do
    it "returns http success" do
      get 'cookies'
      response.should be_success
      response.body.should have_selector('h1', content: 'cookies')
    end
  end


end
