class TasksController < ApplicationController
  #before_action :task_params, only: [:create, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.all.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task_params
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
    @task = Task.all.find(params[:id])
  end

  def update
     @task = Task.all.find(params[:id])

     if params[:completed?] == 'yes'
        @task.completed = true
     end

     @task.update(task_params)
     redirect_to tasks_path(@task)
  end

  def destroy
    @Task = Task.all.find(params[:id])
    @Task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end


# As a user, I can list tasks
# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task
