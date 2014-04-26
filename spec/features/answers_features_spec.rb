require 'spec_helper'

describe "Answers" do
  let!(:question) {FactoryGirl.create :question}
  let(:answer) {FactoryGirl.create :answer}

  before(:each) do
    visit root_path
    click_on "Sign Up"
    fill_in "Username", :with => Faker::Lorem.word
    fill_in "Email", :with => Faker::Internet.email
    fill_in "Password", :with => "moo"
    fill_in "Password confirmation", :with => "moo"
    click_on "Sign Up!"
  end

  context "Create a new answer button" do
    it "should display a new form for answer" do
      visit question_path(question)
      click_on "Answer this Question"
      expect(page).to have_content "Homepage"
    end
  end

  context "Create an answer" do
    it "should create an answer" do
      visit question_path(question)
      click_on "Answer this Question"
      fill_in "optional title", :with => answer.title
      fill_in "type your answer here", :with => answer.body
      click_on "Create Answer"
      expect(page).to have_content answer.title
    end
  end
end