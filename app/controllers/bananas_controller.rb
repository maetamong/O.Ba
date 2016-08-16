class BananasController < ApplicationController
	before_action	:login_check
	skip_before_action	:login_check, only: [:project]

	def project
	end

  def photos
		@photos = Photo.all
  end

  def photos_user
  end

  def data
  end

  def points
  end
end
