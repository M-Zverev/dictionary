class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new

    end
    
    def create
        user_params = Hash.new
        user_params[:email] = params.require(:email)
        user_params[:name] = user_params[:email]
        user_params[:password] = params.require(:password)

        user= User.find_by(email: user_params[:email])&.authenticate(user_params[:password])

        if user.present?
            session[:user_id] = user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def delete
        session.delete(:user_id)
        redirect_to root_path
    end
end