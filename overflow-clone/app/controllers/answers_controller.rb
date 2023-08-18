class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      respond_to do |format|
        format.html { redirect_to question_url(@question), notice: "Watch it, mister!" }
        format.js
      end
    end
  end

  def show
    @vote = Vote.new
  end

private
  def answer_params
    params.require(:answer).permit(:content, :question_id).merge(user_id: current_user.id, question_id: @question.id)
  end
end
