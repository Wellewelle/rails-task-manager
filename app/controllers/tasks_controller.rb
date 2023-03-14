class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @tasks_new = Task.new
  end

  def create
    @tasks_create = Task.new(task_params)
    @tasks_create.save
    redirect_to task_path(@tasks_create)
  end

  def edit
    @tasks_edit = Task.find(params[:id])
  end

  def update
    @tasks_update = Task.find(params[:id])
    @tasks_update.update(task_params)
    redirect_to task_path(@tasks_update)
  end

  def destroy
    @tasks_destroy = Task.find(params[:id])
    @tasks_destroy.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
