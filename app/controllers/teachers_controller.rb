class TeachersController < ApplicationController

	mount_uploader :avatar, AvatarUploader

	def show
		@teacher = Teacher.find(params[:id])
	end
end
