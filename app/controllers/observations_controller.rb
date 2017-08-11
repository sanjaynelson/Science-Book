class ObservationsController < ApplicationController
  def index
    @experiment = Experiment.find(params[:id])
  end

  def create
    if params[:experiment_id]
      @experiment = Experiment.find(params[:experiment_id])
      @observation = Observation.new(observation_params)
      @observation.user = User.find_by(session[:id])
      @experiment.observations << @observation
      if @observation.save
        # redirect_to action: 'index'
        redirect_to @experiment
      else
        render :index, status: 422
      end
    elsif params[:procedure_id]
      @procedure = Procedure.find(params[:procedure_id])
      @observation = Observation.new(observation_params)
      @observation.user = User.find_by(session[:id])
      @procedure.observations << @observation
      if @observation.save
        # redirect_to action: 'index'
        redirect_to @procedure
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
