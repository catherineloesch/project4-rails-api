class JobsController < ApplicationController
    before_action :set_job, only: [:show, :edit, :update, :destroy]

    def index
        @user = User.find(params[:user_id])
        @jobs = @user.jobs
        render json: @jobs
    end

    def all
        @jobs = Job.all
        render json: @jobs
    end

    def show
        render json: @job
    end

    def new
        @job = Job.new
        render json: @job
    end


    def create
    @job = Job.create(job_params)
      if @job.valid?
        render json: @job
      else
        render json: @job.errors, status: :unprocessable_entity
      end
    end

    def edit
        render json: @job
    end

    def update
        if @job.update(job_params)
          render json: @job
        else
          render json: @job.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @job.destroy
        render json: @job
    end

    private
    def set_job
        @job = User.find(params[:user_id]).jobs.find(params[:id])
    end

    def job_params
        params.require(:job).permit(:title, :description, :type, :pay, :start_date, :start_time, :end_date, :end_time, :user_id)
    end

end
