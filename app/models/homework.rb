class Homework < ActiveRecord::Base
	has_many :responses
	belongs_to :assignment
	
end
