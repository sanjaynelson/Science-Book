class ObservationsController < ApplicationController
  def index
    @experiment = Experiment.find(params[:id])
  end

  def create
    @experiment = Experiment.find(params[:id])
    @observation = Observation.new(observation_params)
    @observation.user = User.find_by(session[:id])
    @experiment.observations << @observation

    redirect_to action: 'index'
  end

  private
    def observation_params
      params.require(:observation).permit(:body)
    end
end