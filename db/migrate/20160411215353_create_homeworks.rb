class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :message
      t.datetime :final_date
      t.integer :assignment_id

      t.timestamps null: false
    end
  end
end
