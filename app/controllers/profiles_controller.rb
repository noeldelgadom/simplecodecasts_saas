class ProfilesController < ApplicationController
    def new
        # Form where a user can fill out their own profile
        @user = User.find(params[:user_id])     # Reaches into the db and finds user that is actually loged in
        @profile = @user.build_profile
    end
end