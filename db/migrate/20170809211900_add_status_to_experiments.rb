class AddStatusToExperiments < ActiveRecord::Migration[5.1]
  def change
    add_column :experiments, :status, :string
  end
end
