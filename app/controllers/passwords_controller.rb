class PasswordsController < ApplicationController
    # allows only logged in users
    before_action :require_user_logged_in! #this callback is defined in application_controller.rb
    def edit; end
    def update
      # update user password
      if Current.user.update(password_params)
        redirect_to root_path, notice: 'Password Updated'
      else
        render :edit
      end
    end
    private
    def password_params
      params.require(:user).permit(:password, :password_confirmation)
    end
  end

  #this controller allows the signed in user to update passwords