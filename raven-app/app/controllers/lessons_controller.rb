class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      respond_to do |format|
        format.html { redirect_to lessons_path }
        format.js
      end
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(params[:lesson])
    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.js
    end
  end

private

  def lesson_params
    params.require(:lesson).permit(:name, :section, :url)
  end

end
