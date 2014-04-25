require 'spec_helper'

describe "Users" do

  context "A new user" do
    it "can sign up" do
      visit root_path
      click_on "Sign Up"
      fill_in "Username", with: "lkj"
      fill_in "Email", with: "fg@fg.com"
      fill_in "Password", with: "pass"
      fill_in "Password confirmation", with: "pass"
      click_on "Sign Up!"
      expect(page).to have_content "Logout"
    end
  end
end
