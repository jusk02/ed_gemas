class CreateTechersAssignments < ActiveRecord::Migration
  def change
    create_table :techers_assignments do |t|
      t.integer :teacher_id
      t.integer :assignment_id

      t.timestamps null: false
    end
  end
end
