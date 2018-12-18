class ProjectsController < ApplicationController
  before_action :get_project, only: [:edit, :update]

  def index
    @projects = Project.includes(:client).order(:id)
  end

  def show
    @projects = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit
    end  
  end

  private

  def get_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit!
  end

end
