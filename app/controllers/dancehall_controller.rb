class DancehallController < ApplicationController
  include AuthenticatedSystem
  before_filter :login_required
  def index
  @user= current_user
 
         if @user.sex== "Male"
       
        
#       unless @user.search_religion.blank? || @user.search_religion =="No"
#         flash[:notice] ="in if"
#              unless @user.search_cast.blank?
#                if @user.search_cast == "Yes"
#                  cast = @user.cast
#                end
#              end
#            unless @user.search_cast.blank? && @user.search_cast == "No"
#
#              unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND mothertongue = ? AND job = ? AND sex = ?",@user.religion,@user.cast,@user.subcast,mothertongue,job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND  job = ? AND sex = ?",@user.religion,@user.cast,@user.subcast,@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND mothertongue = ?  AND sex = ?",@user.religion,@user.cast,@user.subcast,@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ?  AND sex = ?",@user.religion,@user.cast,@user.subcast, "Female"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ?  AND mothertongue = ? AND job = ? AND sex = ?",@user.religion,@user.cast,@mothertongue,@job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND  job = ? AND sex = ?",@user.religion,@user.cast,@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ? AND cast = ?  AND mothertongue = ?  AND sex = ?",@user.religion,@user.cast,@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND sex = ?",@user.religion,@user.cast, "Female"])
#                  end
#
#                end
#
#
#
#              end
#
#            else
#unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND subcast = ? AND mothertongue = ? AND job = ? AND sex = ?",@user.religion,@user.subcast,@mothertongue,@job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND subcast = ? AND  job = ? AND sex = ?",@user.religion,@user.subcast,@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ? AND subcast = ? AND mothertongue = ?  AND sex = ?",@user.religion,@user.subcast,@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ?  AND subcast = ?  AND sex = ?",@user.religion,@user.subcast, "Female"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND  mothertongue = ? AND job = ? AND sex = ?",@user.religion,@mothertongue,@job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND  job = ? AND sex = ?",@user.religion,@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ?   AND mothertongue = ?  AND sex = ?",@user.religion,@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ?  AND sex = ?",@user.religion, "Female"])
#                  end
#
#                end
#
#
#
#              end
#
#            end
#       else
#         flash[:notice]= "in else"
#unless @user.search_cast.blank? && @user.search_cast == "No"
#
#              unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Female"])
#
#                  else
#
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["  job = ? AND sex = ?",@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => [" mothertongue = ?  AND sex = ?",@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Female"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["  job = ? AND sex = ?",@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#           eligion           @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["mothertongue = ?  AND sex = ?",@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Female"])
#                  end
#
#                end
#
#
#
#              end
#
#            else
#unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" job = ? AND sex = ?",@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => [" mothertongue = ?  AND sex = ?",@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Female"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Female"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["AND  job = ? AND sex = ?",@job, "Female"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => [" mothertongue = ?  AND sex = ?",@mothertongue, "Female"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Female"])
#                  end
#
#                end
#
#
#
#              end
#
#            end
#
#       end
#
#       else
#         unless @user.search_religion.blank? && @user.search_religion =="No"
#
#            unless @user.search_cast.blank? && @user.search_cast == "No"
#
#              unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND mothertongue = ? AND job = ? AND sex = ?",@user.religion,@user.cast,@user.subcast,@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND  job = ? AND sex = ?",@user.religion,@user.cast,@user.subcast,@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND mothertongue = ?  AND sex = ?",@user.religion,@user.cast,@user.subcast,@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ?  AND sex = ?",@user.religion,@user.cast,@user.subcast, "Male"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ?  AND mothertongue = ? AND job = ? AND sex = ?",@user.religion,@user.cast,@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND  job = ? AND sex = ?",@user.religion,@user.cast,@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ? AND cast = ?  AND mothertongue = ?  AND sex = ?",@user.religion,@user.cast,@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND sex = ?",@user.religion,@user.cast, "Male"])
#                  end
#
#                end
#
#
#
#              end
#
#            else
#unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND subcast = ? AND mothertongue = ? AND job = ? AND sex = ?",@user.religion,@user.subcast,@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND subcast = ? AND  job = ? AND sex = ?",@user.religion,@user.subcast,@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ? AND subcast = ? AND mothertongue = ?  AND sex = ?",@user.religion,@user.subcast,@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ?  AND subcast = ?  AND sex = ?",@user.religion,@user.subcast, "Male"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND  mothertongue = ? AND job = ? AND sex = ?",@user.religion,@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["religion = ? AND  job = ? AND sex = ?",@user.religion,@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["religion = ?   AND mothertongue = ?  AND sex = ?",@user.religion,@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => ["religion = ?  AND sex = ?",@user.religion, "Male"])
#                  end
#
#                end
#
#
#
#              end
#
#            end
#       else
#unless @user.search_cast.blank? && @user.search_cast == "No"
#
#              unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["  job = ? AND sex = ?",@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => [" mothertongue = ?  AND sex = ?",@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Male"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["  job = ? AND sex = ?",@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => ["mothertongue = ?  AND sex = ?",@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Male"])
#                  end
#
#                end
#
#
#
#              end
#
#            else
#unless @user.search_subcast.blank? && @user.search_subcast == "No"
#
#                unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => [" job = ? AND sex = ?",@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => [" mothertongue = ?  AND sex = ?",@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Male"])
#                  end
#
#                end
#
#              else
#                 unless @user.search_job.blank?
#
#                  unless @user.search_mothertongue.blank?
#                    @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#
#                    @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["mothertongue = ? AND job = ? AND sex = ?",@mothertongue,@job, "Male"])
#
#                  else
#                      @job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
#                       @mate = User.find(:all,:conditions => ["AND  job = ? AND sex = ?",@job, "Male"])
#                  end
#
#                else
#                  unless @user.search_mothertongue.blank?
#                      @mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]
#                    @mate = User.find(:all,:conditions => [" mothertongue = ?  AND sex = ?",@mothertongue, "Male"])
#                  else
#
#                       @mate = User.find(:all,:conditions => [" sex = ?", "Male"])
#                  end
#
#                end
#
#
#
#              end
#
#            end
#
#       end




      unless @user.search_religion.blank?
#        flash[:notice]="religion not blank"
        if @user.search_religion==0
          religion= @user.religion
#          flash[:notice]="religion yes"
          unless @user.search_cast.blank?
            if @user.search_cast==0
#              flash[:notice]="cast yes"
              cast= @user.cast
              unless @user.search_subcast.blank?
                if @user.search_subcast==0
#                  flash[:notice]="subcast yes"
                  subcast=@user.subcast
                else

                end
              else
                redirect_to search_criteria_users_path and return
                flash[:notice]="You can't skip this part"
              end
            else
                
            end
            
          else
            redirect_to search_criteria_users_path and return
                flash[:notice]="You can't skip this part"
          end
        else

        end


      else
        redirect_to search_criteria_users_path and return
        flash[:notice]= "You can't skip this part"
      end
      unless @user.search_job.blank?
        
        job=User::Search_job::SEARCH_JOB_LIST[@user.search_job]
       
      else
        redirect_to search_criteria_users_path and return
        flash[:notice]= "You can't skip this part"
      end
      unless @user.search_mothertongue.blank?
        
#          flash[:notice]="mothertongue yes"
          mothertongue=User::Search_mothertongue::SEARCH_MOTHERTONGUE_LIST[@user.search_mothertongue]


      else
        redirect_to search_criteria_users_path and return
        flash[:notice]= "You can't skip this part"
      end

@mate = User.find(:all,:conditions => ["religion = ? AND cast = ? AND subcast = ? AND job = ?   AND mothertongue = ?  AND sex = ?",religion,cast,subcast,job,mothertongue, "Female"])






       end
  









  end
end