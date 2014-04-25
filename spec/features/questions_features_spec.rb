require 'spec_helper'

describe "Questions" do

  context "#index" do
    it "should give us form when we click on create" do
      visit questions_path
      click_on "Ask the Duck"
      expect(page).to have_content "Title"
    end
  end
end