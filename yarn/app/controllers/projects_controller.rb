class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render('projects/index.html.erb')
  end

  def new
    @project = Project.new
    render('projects/new.html.erb')
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Your project was added to Yarn."
      redirect_to("/projects/#{@project.id}")
    else
      render('projects/new.html.erb')
    end
  end

  def show
    @project = Project.find(params[:id])
    render('projects/show.html.erb')
  end

  def edit
    @project = Project.find(params[:id])
    render('projects/edit.html.erb')
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(params[:project])
      flash[:notice] = "#{@project.name} has been updated."
      redirect_to("/projects/#{@project.id}")
    else
      render('projects/edit.html.erb')
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:alert] = "Your project was deleted."
    redirect_to("/projects")
  end
end
