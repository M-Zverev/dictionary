class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new
        @user = User.new
    end

    def create
        user_params = Hash.new
        user_params[:email] = params.require(:email)
        user_params[:name] = user_params[:email]
        user_params[:password] = params.require(:password)

        if user_params[:password] == params.require(:confirm_password)
            User.create(user_params)

            redirect_to "/login"
        else
            render :new
        end

        
    end
end