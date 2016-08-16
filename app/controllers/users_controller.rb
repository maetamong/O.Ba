class UsersController < ApplicationController
  def signup
  end

  def signup_complete
		user = User.new
		user.email = params[:email]
		user.username = params[:username]
		user.password = params[:password]
		if user.save
			flash[:alert]	=	"성공적으로 가입되었습니다. 감사합니다!"
			session[:user_id] = user_id
			redirect_to "/bananas/project"
		else
			flash[:alert] = user.errors.values.flatten.join('	')
			redirect_to "/" 
		end
  end

  def login
  end
 
  def login_complete
		user = User.where(username: params[:inputusername])[0]
		if user.nil?
			flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
			redirect_to :back
		elsif user.password != params[:inputpassword]
			flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
			redirect_to :back
		else
			session[:user_id] = user.id
			flash[:alert] = "성공적으로 로그인하였습니다."
			redirect_to "/bananas/project"
``	end
  end

  def logout_complete
		reset_session
		flash[:alert] = "성공적으로 로그아웃하였습니다."
		redirect_to "/"
  end
end
