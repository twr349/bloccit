class UsersController < ApplicationController

   skip_before_action :verify_authenticity_token
   ActionController::Parameters.permit_all_parameters = true
   params = ActionController::Parameters.new
    
    def new
     @user = User.new
    end
    
    def user_params
     params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
    
    def create
     @user = User.new(user_params)
     @user.name = params[:user][:name]
     @user.email = params[:user][:email]
     @user.password = params[:user][:password]
     @user.password_confirmation = params[:user][:password_confirmation]
     
     if @user.save
       flash[:notice] = "Welcome to Bloccit #{@user.name}!"
       redirect_to root_path
     else
       flash.now[:alert] = "There was an error creating your account. Please try again."
       render :new
     end
    end
    
    
    
    def confirm
     @user = User.new
     @user.name = params[:user][:name]
     @user.email = params[:user][:email]
     @user.password = params[:user][:password]
     @user.password_confirmation = params[:user][:password_confirmation]
    end    

end
