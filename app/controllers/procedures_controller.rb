class ProceduresController < ApplicationController
	def index
		@experiment = Experiment.find(params[:experiment_id])
		@procedures = @experiment.procedures.all
	end

	def new
	end

	def create
	end

	def show
	end

	private
		def procedure_params
		end

	end