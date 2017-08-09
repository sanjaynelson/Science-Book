class AddProposalsToExperiments < ActiveRecord::Migration[5.1]
  def change
    add_reference :experiments, :proposal, foreign_key: true
  end
end
