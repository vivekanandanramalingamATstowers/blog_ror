class TodoListsController < ApplicationController

 def create
    @project = Project.find(params[:project_id])
    @todo_list = @project.todo_lists.create(todo_list_params)
    redirect_to project_path(@project)
  end
 
  private
    def todo_list_params
      params.require(:todo_list).permit(:commenter, :body)
    end
end
