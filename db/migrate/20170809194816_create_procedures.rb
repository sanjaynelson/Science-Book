class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :procedures do |t|
      t.string :body
      t.references :experiment, foreign_key: true

      t.timestamps
    end
  end
end
