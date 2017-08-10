require "rails_helper"

RSpec.describe ProposalsController, type: :controller do
  let!(:user) {User.create!(username: "Test", password_digest: "Test", email: "test@test.com")}
  let!(:proposal) { Proposal.create!(title: "Test", summary: "Test", hypothesis: "Test", user_id: user.id)}
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

  describe "GET show" do
    it "has a 200 status code" do
      get :show, params: {id: proposal.id}
      expect(response.status).to eq (200)
    end

    it "has a proposal object" do
      get :show, params: {id: proposal.id}
      expect(assigns(:proposal)).to be_a Proposal
    end
  end

  describe "GET new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq (200)
    end

    it "has an empty proposal object" do
      get :new
      expect(assigns(:proposal)).to have_attributes(title: nil, summary: nil, hypothesis: nil, user_id: nil)
    end
  end

  describe "POST create" do
    xit "renders 'new' invalid input is submitted" do
      post :create
    end
  end
end
