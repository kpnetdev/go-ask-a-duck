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
			click_on "Sign Up"
			expect(page).to have_css 'div.sign-up'


		end
	end

	context "When signup form is already displayed" do
		it "should display no form when signup button is clicked" do


		end

		it "should switch to login form when login button is clicked" do


		end
	end
end