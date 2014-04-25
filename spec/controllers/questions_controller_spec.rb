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

  context "#create" do
    it "creates with valid attributes" do
      expect {
        post :create, :question => FactoryGirl.attributes_for(:question)
      }.to change { Question.count }.by(1)
      expect(response).to be_redirect
    end

    it "doesn't create with invalid attributes" do
      expect {
        post :create
      }.not_to change { Question.count }
      expect(response).not_to be_redirect
    end
  end

  context "#show" do
    let(:question) {FactoryGirl.create :question}
    it "is successful" do
      get :show, :id => question.id
      expect(response).to be_success
    end

    it "should assign the question the is found by question id" do
      get :show, :id => question.id
      expect(assigns(:question)).to eq question
    end
  end
end