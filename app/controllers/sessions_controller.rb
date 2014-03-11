class SessionsController < ApplicationController

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
            sign_in user
            redirect_to user
        else
            flash[:error] = '邮箱或者密码不正确!'
            render 'new'
        end
	end    

    def create
            sign_out
            redirect_to root_path
    end
end
