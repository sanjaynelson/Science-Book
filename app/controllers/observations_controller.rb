class ObservationsController < ApplicationController
  before_action :authenticate!

  def index
    @experiment = Experiment.find(params[:id])
  end

  def create
    # p params
    if params[:experiment_id]
      @experiment = Experiment.find(params[:experiment_id])
      @observation = Observation.new(observation_params)
      @experiment.observations << @observation


      if @observation.save
        redirect_to @experiment
      else
        render :index, status: 422
      end
    elsif params[:procedure_id]
      @procedure = Procedure.find(params[:procedure_id])
      @observation = Observation.new(observation_params)
      @procedure.observations << @observation


      if @observation.save
        redirect_to @procedure.experiment.procedures
      else
        render :index, status: 422
      end
    end


  end

  private
    def observation_params
      params.require(:observation).permit(:body)
    end
end