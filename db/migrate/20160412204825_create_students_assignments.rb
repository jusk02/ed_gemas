class CreateStudentsAssignments < ActiveRecord::Migration
  def change
    create_table :students_assignments do |t|
      t.integer :student_id
      t.integer :assignment_id

      t.timestamps null: false
    end
  end
end
