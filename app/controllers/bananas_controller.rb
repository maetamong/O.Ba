class BananasController < ApplicationController
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
