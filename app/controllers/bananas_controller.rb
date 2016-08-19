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
		photo.image = params[:image]
		photo.message = params[:message]
		if photo.save
			point = Point.new
			point.user_id = session[:user_id]
			point.photo_id = Photo.last.id
			point.donation = 0
			point.possession = 1
    	if point.save
				flash[:alert] = "저장되었습니다."
 				redirect_to "/bananas/photos_donation" 	
			end
		else
			flash[:alert]	= photo.errors.values.flatten.join('	')
			redirect_to :back
		end
	end
	
	def photos_donation
		@photos = Photo.all
		@point = Point.last
	end
 
	def photos_donation_complete
		point = Point.last
		if params[:commit]=='A'
			if point.user_id == session[:user_id]
				point.donation = 1
				point.possession = 0
				point.save
				flash[:alert] = "기부해주셔서 감사합니다!"
				redirect_to "/bananas/photos"
			end
		elsif	params[:commit]=='B' 
		  flash[:alert] = "참여해주셔서 감사합니다!"
			redirect_to "/bananas/points/:id"
		end
	end

  def data
  end

  def points
		@user=User.find(session[:user_id])
		point=Point.where(user_id: session[:user_id])
		pos = point.where(possession:1)
		@pos_num = pos.count
		don = point.where(donation:1)
		@don_num = don.count
	end

	def points_complete
		if params[:commit] == 'A'
			point=Point.where(user_id: session[:user_id])
			pos = point.where(possession:1)
			n = pos.count
			count = 0
			0.upto(n-1) do |x|
				pos[x].donation=1
				pos[x].possession=0
				pos[x].save
				count += 1
			end
			flash[:alert] = "총 #{count}개의 포인트가 기부되었습니다. 감사합니다!"
			redirect_to "/bananas/points/:id"
		elsif params[:commit] == 'B'
			redirect_to "/bananas/project"
		end
	end
end
