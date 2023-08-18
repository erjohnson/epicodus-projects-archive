class TagsController < ApplicationController

  before_filter :authorize, only: [:create, :destroy]

  def create
    @tag = Tag.create(tag_params)
    if @tag.save
      redirect_to photos_path, notice: "Tag Added!"
    else
      render "show_photo_path"
    end
  end



  def destroy

  end

  private

  def tag_params
    params.require(:tag).permit(:photo_id, :user_id, :tagged_by)
  end
end
