class ProjectsController < ApplicationController
def new
@project = Project.new
end
def create
  @project = Project.new(project_params)
 
  if @project.save
  redirect_to @project
  else
    render 'new'
  end
end
def edit
  @project = Project.find(params[:id])
end
def update
  @project = Project.find(params[:id])
 
  if @project.update(project_params)
    redirect_to @project
  else
    render 'edit'
  end
end
def show
  
  
end
def index
  @projects = Project.all
end
def destroy
  
  @project.destroy
 
  redirect_to projects_path
end
private
	def set_widget
      @project = Project.find(params[:id])
    end
  def project_params
    params.require(:project).permit(:title, :text)
  end
  
 
    

end
