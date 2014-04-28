require 'spec_helper'

describe "Authentication" do

	context "When neither login nor signup is displayed" do
		it "should display signup form when signup button is clicked" do
			visit root_path
			click_on "Sign Up"
			expect(page).to have_css 'div.sign-up'
		end

		it "should display login form when login button is clicked" do
			visit root_path
			click_on "Login"
			expect(page).to have_css 'div.login'
		end
	end



	context "When signup form is already displayed" do
	
		before(:each) do
			visit root_path
			click_on "Sign Up"
		end

		it "should initially have the form displayed" do
			expect(page).to have_css 'div.sign-up'
		end
	
		xit "should display no form when signup button is clicked", js: true do
			click_on "Sign Up"
			expect(page).to_not have_css 'div.sign-up'
		end
	end
end