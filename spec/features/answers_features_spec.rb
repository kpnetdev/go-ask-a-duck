require 'spec_helper'

describe "Answers" do
  let!(:question) {FactoryGirl.create :question}
  let(:answer) {FactoryGirl.create :answer}

  context "Create a new answer button" do
    it "should display a new form for answer" do
      visit question_path(question)
      click_on "Answer this Question"
      expect(page).to have_content "Title"
    end
  end

  context "Create an answer" do
    it "should create an answer" do
      visit new_question_answer_path(question)
      fill_in "Title", :with => answer.title
      fill_in "Body", :with => answer.body
      click_on "Create Answer"
      expect(page).to have_content question.title
    end
  end
end