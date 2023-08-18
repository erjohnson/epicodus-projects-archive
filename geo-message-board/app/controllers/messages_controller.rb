class MessagesController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @messages = Message.near([@user.latitude, @user.longitude], 0.1, :units => :km)
  end

  def new
    @user = User.find(current_user.id)
    @message = Message.new
  end

  def create
    @user = User.find(current_user.id)
    @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to messages_url }
        format.js
      end
    end
  end

private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, latitude: current_user.latitude, longitude: current_user.longitude)
  end
end
