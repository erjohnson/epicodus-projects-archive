class UsersController < ApplicationController

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      respond_to do |format|
        format.html { redirect_to messages_url }
        format.js
      end
    end
  end

private

  def user_params
    params.require(:user).permit(:latitude, :longitude)
  end
end
