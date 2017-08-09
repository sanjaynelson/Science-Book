class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :title
      t.string :summary
      t.string :hypothesis
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
