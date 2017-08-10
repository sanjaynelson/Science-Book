class ExperimentsController < ApplicationController
	def index
		@experiments = Experiment.all.order('created_at DESC')
	end
end