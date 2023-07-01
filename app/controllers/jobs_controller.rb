class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'jobs/index'
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      render 'jobs/create'
    end
  end

  def show
    @job = Job.find(params[:id])
    render 'jobs/show'
  end
end
