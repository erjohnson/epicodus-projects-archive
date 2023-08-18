class StoriesController < ApplicationController
  def new
    project = Project.find(params[:project_id])
    @story = project.stories.new
    render('stories/new.html.erb')
  end

  def create
    project = Project.find(params[:project_id])
    @story = project.stories.new(params[:story])
    if @story.save
      flash[:notice] = "User story added."
      redirect_to("/projects/#{@story.project_id}")
    else
      render('stories/new.html.erb')
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    flash[:alert] = "User story deleted."
    redirect_to("/projects/#{@story.project_id}")
  end
end
