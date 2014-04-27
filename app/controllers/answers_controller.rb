class AnswersController < ApplicationController

  def create
    question = Question.find(params[:question_id])
    @answer = question.answers.build(params[:answer])
    @answer.user_id = current_user.id
    if @answer.save
      render :partial => 'answers/show', :locals => { :answer => @answer }
    else
      render text: @answer.errors.full_messages.join(" "), status: :unprocessable_entity
    end
  end

end