require 'rails_helper'

RSpec.describe ExperimentsController, type: :controller do
	let!(:user) {User.create!(username: Faker::Internet.user_name, email:Faker::Internet.email, password_digest: "password", role: "Experimenter")}

	let!(:proposal) { Proposal.create!(title: Faker::Hipster.word, summary: Faker::Hipster.paragraph, hypothesis: Faker::Hacker.say_something_smart, user_id: user.id)}

	let!(:experiment) { Experiment.create!(title: Faker::Hipster.sentence, proposal_id: proposal.id )}

	describe "Get #index" do
		it "responds with status code 200" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end

		it "renders the :index template" do
			
			get :index
			expect(response).to render_template("index")
		end
	end

	describe "Get #new" do
		it "responds with status code 200" do
			get :new
			expect(response).to have_http_status 200
		end
	end
end