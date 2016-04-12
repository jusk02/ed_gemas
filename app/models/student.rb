class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         enum role: [ :student, :teacher, :admin ]

has_many :students_assignments
has_many :assignments, through: :students_assignments
has_many :responses

before_create :define_role


def define_role
	self.role= "student" unless self.role.present?	
end
end
