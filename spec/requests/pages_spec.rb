require 'spec_helper'

describe "Pages" do

  describe "GET /pages" do
    it "works! (now write some real specs)" do
      get root_path
      response.status.should be(200)
    end
  end

  describe "Home page" do
    it "should have text" do
      visit '/home'
      page.should have_content('Home')
      page.should have_selector('h1', content: 'Home')
    end
  end

  describe "Home page 2" do
    it "should have text" do
      visit home_path
      page.should have_content('Home')
    end
  end

end
