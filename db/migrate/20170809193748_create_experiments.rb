class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.string :title
      t.string :results
      t.string :conclusion
      # t.references :proposal, foreign_key: true

      t.timestamps
    end
  end
end
