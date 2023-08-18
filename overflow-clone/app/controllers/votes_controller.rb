class VotesController < ApplicationController

  def new
    @vote = Votes.new
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      respond_to do |format|
        format.html { redirect_to question_url(@question) }
        format.js
      end
    end
  end

private
  def vote_params
    params.require(:vote).permit(:answer_id).merge(user_id: current_user.id)
  end
end
