require 'rails_helper'

describe ObservationsController, type: :controller do

   let!(:user) {User.create!(username: "user1", email: "u@u.com")}

   let!(:proposal) {Proposal.create!(summary: "Flexitarian kogi lomo. Wolf butcher disrupt cornho...", hypothesis: "We need to copy the neural JSON bandwidth!", user: user)}

   let!(:experiment) {Experiment.create!(results: "Centrifuges are no longer present", conclusion: "Centrifuges = Childhood Whimsy", proposal: proposal)}

   let!(:observation_e) {Observation.new(body: "Heckin cool!", user: user)}
   # experiment.observations << observation_e


  describe 'GET #index' do
    it 'prints experiment' do
          expect(true).to be true
    end

    it 'responds with status code 200' do
      get :index, params: {id: experiment.id}
      expect(response).to have_http_status 200
    end

    it 'assigns the target experiment to @experiment ' do
      experiment.observations << observation_e

      get :index, params: {id: experiment.id}
      expect(assigns(:experiment)).to eq(observation_e.observable)
    end

    it 'renders the index template' do

      get :index, params: {id: experiment.id}
      expect(response).to render_template(:index)
    end
  end

  describe 'POST #create' do
    context 'when valid params are passed' do
      it 'responds with status code 302' do
        post :create, params: {observation: {body: 'Totes Sweet!', user: user}, id: experiment.id}
        expect(response).to have_http_status 302
      end

      it 'creates a new observation in the database' do
        expect{post :create, params: {observation: {body: 'Totes Sweet!', user: user}, id: experiment.id}}.to change{Observation.all.count}.by 1
      end

      xit 'assigns the newly created observation to @observation' do
      end

      xit 'redirects to the games experiment' do
      end

    end

  end

  # describe 'PUT' do
  # end

  # describe 'DELETE' do
  # end

end