require 'spec_helper'

describe AnswersController do
  let!(:question) {FactoryGirl.create(:question)}
  # let(:answer) {FactoryGirl.create(:answer)}

  context "#create" do
    it "creates with valid attributes" do
      expect {
        post :create, answer: FactoryGirl.attributes_for(:answer)
        # post :create, :question_id => question.id, :answer => FactoryGirl.attributes_for(:answer)
      }.to change { Answer.count }.by(1)
    end

    it "doesn't create with invalid attributes" do
      expect {
        post :create, :question_id => question.id
      }.not_to change { Answer.count }
    end
  end
end