require 'spec_helper'

describe "leaving comments" do
	let(:user) { FactoryGirl.create :user }

	context "a logged in user" do

		before(:each) do
	   ApplicationController.any_instance.stub(:current_user).and_return(user)
		end

		xit "can leave a comment on a question" do

		end

		xit "can leave a comment on an answer" do


		end
	end
end