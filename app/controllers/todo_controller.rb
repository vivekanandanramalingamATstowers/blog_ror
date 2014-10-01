class TodoController < ApplicationController
def index
	@todos= Todo.where(done: false)
	@todone= Todo.where(done: true)
end
def change_status
	@project=Project.find(id: params[:project_id])
	
end
def show
	@project = Project.find(params[:id])
end
def new
	@todo = Todo.new
end
def create
  @todo = Todo.new(todo_params)
 
  if @todo.save
  redirect_to project_path(id: params[:project_id])
  else
    render 'new'
  end
  
 
end

 def destroy
 
  @todo=Todo.find(params[:todo_id])
  @todo.destroy
  
  redirect_to project_path(id: params[:project_id])
end
 def update
 
  @todo=Todo.find(params[:todo_id])
  @todo.update(done: TRUE)
  
  redirect_to project_path(id: params[:project_id])
end
private
  def todo_params
    params.require(:todo).permit(:task, :done, :duedate, :duetime, :project_id)
  end
end