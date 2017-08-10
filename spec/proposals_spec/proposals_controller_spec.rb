require "rails_helper"

RSpec.describe ProposalsController, type: :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq (200)
    end

    it "has a collection of proposal objects" do
      get :index
      expect(assigns(:proposals)).to all( be_a Proposal)
    end
  end
end
