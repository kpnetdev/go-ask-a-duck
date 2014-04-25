require 'spec_helper'

describe "Questions" do
  let!(:question) {FactoryGirl.create :question}
  context "#index" do
    it "should give us form when we click on create" do
      visit questions_path
      click_on "Ask the Duck"
      expect(page).to have_content "Title"
    end

    it "should list all questions" do
      visit questions_path
      expect(page).to have_content question.title
    end
  end

  context "#new" do
    it "should fill in a form" do
      visit new_question_path
      fill_in "Title", :with => question.title
      fill_in "Body", :with => question.body
      click_on "Create Question"
      expect(page).to have_content question.title
    end
  end
end