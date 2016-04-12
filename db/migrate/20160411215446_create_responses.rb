class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :message
      t.integer :grade
      t.integer :homework_id

      t.timestamps null: false
    end
  end
end
