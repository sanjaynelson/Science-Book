class CreateObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :observations do |t|
      t.references :observable, polymorphic: true, index: true
      t.string :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
