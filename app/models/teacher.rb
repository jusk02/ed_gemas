class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

enum role: [ :student, :teacher, :admin ]


has_many :teachers_assignments
has_many :assignments, through: :teachers_assignments

before_create :define_role


def define_role
	self.role= "teacher" unless self.role.present?	
end
end
