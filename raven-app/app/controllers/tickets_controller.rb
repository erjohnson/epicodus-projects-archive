class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      flash[:success] = "Help is on the way!"
      respond_to do |format|
        format.html { redirect_to tickets_path }
        format.js
      end
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update(ticket_params)
    respond_to do |format|
      format.html { redirect_to @ticket }
      format.js
    end
  end

private

  def ticket_params
    params.require(:ticket).permit(:question, :lesson_id, :taken, :taken_at, :done, :done_at).merge(user_id: current_user.id)
  end

end
