class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    render json: @tickets
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    @ticket.save
  end

  def show
    @ticket = Ticket.find(params[:id])
    render json: @ticket
  end
end
