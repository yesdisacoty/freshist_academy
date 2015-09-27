class ProfilesController < ApplicationController
  def new
   # form where user can fill out their own profile
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile
  end
  def create
    # Save values from form to profile
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Profile Updated!"
      redirect_to user_path( params[:user_id] )
    else
      render action: :new
  end

  private
    def profile_params
     params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :descripti       on)
    end

end
