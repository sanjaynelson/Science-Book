class ExperimentsController < ApplicationController

	def index
		@experiments = Experiment.all.order('created_at DESC')
	end

	def new
		@proposal = Proposal.find_by(id: params[:proposal_id])
		@experiment = Experiment.new
	end

	def create
		#TODO Remove dummy user once we merge User objects
		@user = User.last
		@proposal = Proposal.find_by(id: params[:proposal_id])
		@experiment = Experiment.new(experiment_params)
		@experiment.username = "Test"
		if @proposal.experiments << @experiment
			redirect_to @experiment, notice: 'Experiment was successfully created'
		else
			render 'new', status: 422
		end
	end

	def show
		@experiment = Experiment.find(params[:id])
	end

	private
		def experiment_params
			params.require(:experiment).permit(:title, :username, :proposal_id)
		end

end
