class JobsController < ApiController
  # GET /jobs
  def index
    @jobs = Job.select("id, title").all
    render json: @jobs.to_json
  end

  # GET /jobs/:id
  def show
    @job = Job.find(params[:id])
    render json: @job.to_json(:include => { :requirements => { :only => [:id, :description] }})
  end
end
