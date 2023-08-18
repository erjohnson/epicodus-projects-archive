class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = "Message saved!"
      respond_to do |format|
        format.html { redirect_to messages_path }
        format.js
      end
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
    respond_to do |format|
      format.html { redirect_to @message }
      format.js
    end
  end

private

  def message_params
    params.require(:message).permit(:content, :location_id).merge(user_id: current_user.id)
  end

end
