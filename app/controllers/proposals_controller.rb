class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new(proposal_params)
    if current_user.proposals << @proposal
      @proposal
    else
      render "new"
    end
  end

  def show
    @proposal = Proposal.find_by(id: params[:id])
  end

  def edit
    @proposal = Proposal.find_by(id: params[:id])
  end

  def index
    @proposals = Proposal.all
  end

  private

  def proposal_params
    params.require(:proposal).permit(:title, :summary, :hypothesis)
  end

end
