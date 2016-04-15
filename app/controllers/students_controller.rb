class StudentsController < ApplicationController

	mount_uploader :avatar, AvatarUploader

	def show
		@student = Student.find(params[:id])
	end
end
