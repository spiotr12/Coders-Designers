class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order("created_at desc")

  end

  def new
    @project = Project.new
  end

  def edit
    @project = find_project
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: "Project created successfully"
    else
      render 'new'
    end
  end

  def show

  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      flash[:success] = "Project updated"
      redirect_to @project
    else
      render 'edit'
    end
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end
end
