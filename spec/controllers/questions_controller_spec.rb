require 'spec_helper'

describe QuestionsController do

  context "#index" do
    it "is successful" do
      get :index
      expect(response).to be_success
    end

    it "should assign questions to all Question.all" do
      get :index
      expect(assigns(:questions)).to eq Question.all
    end
  end

  context "new" do
    it "is successful" do
      get :new
      expect(response).to be_success
    end

    it "renders the new form template" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns @question to Question to new" do
      get :new
      expect(assigns(:question)).to be_a_new Question
    end
  end
end