require 'spec_helper'

describe "Questions" do
  let!(:question) {FactoryGirl.create :question}
  before(:each) do
    visit root_path
    click_on "Sign Up"
    fill_in "Username", :with => Faker::Lorem.word
    fill_in "Email", :with => Faker::Internet.email
    fill_in "Password", :with => "moo"
    fill_in "Password confirmation", :with => "moo"
    click_on "Sign Up!"
  end

  context "Homepage" do
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

  context "Create a new question page" do
    it "should fill in a form" do
      visit new_question_path
      fill_in "Title", :with => question.title
      fill_in "Body", :with => question.body
      click_on "Create Question"
      expect(page).to have_content question.title
    end
  end

  context "Show question page" do
    it "should show the question" do
      visit question_path(question)
      expect(page).to have_content question.body
    end

    it "should return to homepage when we click on button" do
      visit question_path(question)
      click_on "Homepage"
      expect(page).to have_content "Ask The Duck!"
    end
  end
end