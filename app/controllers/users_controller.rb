class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
       Usermailer.deliver_registration_confirmation(@user)
      redirect_to personal_details_users_path
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end
  def personal_details
    @user = current_user
 end
 def save_personal_details
    @user= current_user
    if @user.update_attributes(params[:user])
          flash[:notice]="hai"
     @me = current_user
     @me.mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[(@me.search_mothertongue).to_i]
     @user.update_attributes(params[:me])
      redirect_to search_criteria_users_path
      
    else
      redirect_to _back
    end
 end
 def search_criteria
   @user= current_user
   
 end
 def save_search_criteria
   @user=current_user
   if @user.update_attributes(params[:user])

     redirect_to dancehall_index_path
     flash[:notice] = "Your profile has been successfully updated. You can now start searching for your mate!!!"
   else
     redirect_to _back
   end
 end
end
