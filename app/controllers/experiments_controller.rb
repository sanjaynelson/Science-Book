class ExperimentsController < ApplicationController
	def index
		@experiments = Experiment.all.order('created_at DESC')
	end

	def new
		@experiment = Experiment.new
	end

	def create
		@experiment = Experiment.new(experiment_params)
		# need a proposal id to work
		# @experiment.proposal_id = proposal_id
		if @experiment.save 
			redirect_to root_path
		else
			render 'new'
		end

	end

	def show
		@experiment = Experiment.find(params[:id])
	end

	private
		def experiment_params
			params.require(:experiment).permit(:title)
		end
		
end