class TasksController < ApplicationController
  def new
  end
  def show
    @task = Task.find_by(id: params[:id])
  end
  def create
		@task = Task.new(text:params[:text], deadline:params[:deadline] , priority:params[:priority])
		@task.save
		redirect_to controller: 'home', action: 'top'
  end
  def edit
		@task = Task.find_by(id: params[:id])
  end
  def update
    @task = Task.find_by(id: params[:id])
    @task.update(text:params[:text], deadline:params[:deadline] , priority:params[:priority])
    redirect_to controller: 'home', action: 'top'
  end
  def delete
    @task = Task.find_by(id: params[:id])
    @task.delete
    redirect_to controller: 'home', action: 'top'
  end
end
