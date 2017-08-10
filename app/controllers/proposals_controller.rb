class ProposalsController < ApplicationController

  def create
    @proposal = Proposal.new(proposal_params)
    # TODO Erase fake user once user object becomes implemented
    @user = User.last
    if @user.proposals << @proposal
      redirect_to @proposal
    else
      render "new", status: 422
    end
  end

  def new
    @proposal = Proposal.new
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
