class Assignment < ActiveRecord::Base
	has_many :students_assignments
	has_many :teachers_assignments
	has_many :students, through: :students_assignments
	has_many :teachers, through: :teachers_assignments
	has_many :homeworks

	validates :name, presence: true
	validates :name, length: { minimum: 2}

end
