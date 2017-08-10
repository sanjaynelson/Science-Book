class ExperimentsController < ApplicationController
	def index
		@experiments = Experiment.all.order('created_at DESC')
	end

	def new
		@experiment = Experiment.new
	end

	private
		def experiment_params
			params.require(:experiment).permit(:title)
		end
end