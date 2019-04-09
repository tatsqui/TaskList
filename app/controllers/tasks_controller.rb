class TasksController < ApplicationController
  def index
    # add an instance variable here
    @tasks = Task.all
  end

  def featured_task
    @featured = @tasks.sample
  end

  def show
    task_id = params[:id]
    puts "Task Id is #{task_id}"

    @task = Task.find_by(id: task_id)
    # @task = Task.find(task_id) -- when we learn about Models

    unless @task
      head :not_found # barely step above raising an exception. 
    end
  end
end
