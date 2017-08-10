class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new(proposal_params)
    current_user.proposals << @proposal ? @proposal : redirect_to "new"
  end

  def show
    @proposals = Proposal.find_by(id: params[:id])
  end

  def edit
    @proposal = Proposal.find_by(id: params[:id])
  end

  def index
    @proposals = Proposals.all
  end

  private

  def proposal_params
    params.require(:proposal).permit(:title, :summary, :hypothesis)
  end

end
