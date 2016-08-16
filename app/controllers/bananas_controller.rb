class BananasController < ApplicationController
	before_action	:login_check
	skip_before_action	:login_check, only: [:project]

	def project
	end

  def photos
		@photos = Photo.all
  end

	def photos_complete
		photo = Photo.new
		photo.user_id = session[:user_id]
		photo.banana_photo = params[:image]
		photo.message = params[:message]
		if photo.save
			flash[:alert] = "저장되었습니다."
 			redirect_to "/bananas/photos_complete" 
		else
			flash[:alert]	= photo.errors.values.flatten.join('	')
			redirect_to :back
		end
	end


  def photos_user
  end

  def data
  end

  def points
  end
end
