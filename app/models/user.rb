require 'digest/sha1'

class User < ActiveRecord::Base
  include Authentication
  include Authentication::ByPassword
  include Authentication::ByCookieToken

  has_attached_file :photo, :styles => { :medium => "400*400>"}
 
  has_many :search_criteria

  
  validates_presence_of     :login
  validates_length_of       :login,    :within => 3..40
  validates_uniqueness_of   :login
  validates_format_of       :login,    :with => Authentication.login_regex, :message => Authentication.bad_login_message

  validates_format_of       :name,     :with => Authentication.name_regex,  :message => Authentication.bad_name_message, :allow_nil => true
  validates_length_of       :name,     :maximum => 100

  validates_presence_of     :email
  validates_length_of       :email,    :within => 6..100 #r@a.wk
  validates_uniqueness_of   :email
  validates_format_of       :email,    :with => Authentication.email_regex, :message => Authentication.bad_email_message

  

  # HACK HACK HACK -- how to do attr_accessible from here?
  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
#  attr_accessible :login, :email, :name, :password, :password_confirmation, :address, :dob



  # Authenticates a user by their login name and unencrypted password.  Returns the user or nil.
  #
  # uff.  this is really an authorization, not authentication routine.  
  # We really need a Dispatch Chain here or something.
  # This will also let us return a human error message.
  #
  def self.authenticate(login, password)
    return nil if login.blank? || password.blank?
    u = find_by_login(login.downcase) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  def login=(value)
    write_attribute :login, (value ? value.downcase : nil)
  end

  def email=(value)
    write_attribute :email, (value ? value.downcase : nil)
  end

  class Cast
    LATIN_CATHOLIC = 0
    ROMAN_CATHOLIC = 1
    SYRIAN_CATHOLIC = 2
    EZAVA = 3
    PANAR = 4
    PULAYAR = 5
    NAMBOODIRI = 6
    BRAHMIN = 7
    SUNNI = 8

    CAST_LIST = { LATIN_CATHOLIC => ["Latin Catholic"], ROMAN_CATHOLIC => ["Roman Catholic"],SYRIAN_CATHOLIC => ["SYRIAN_CATHOLIC"],EZAVA => ["EZAVA"],PANAR => ["PANAR"],PULAYAR => ["PULAYAR"],NAMBOODIRI => ["NAMBOODIRI"],BRAHMIN => ["BRAHMIN"],SUNNI => ["SUNNI"] }
    CAST_SELECT = [["Latin Catholic", LATIN_CATHOLIC], ["Roman Catholic", ROMAN_CATHOLIC], ["SYRIAN_CATHOLIC", SYRIAN_CATHOLIC],["EZAVA",EZAVA],["PANAR",PANAR],["PULAYAR",PULAYAR],["NAMBOODIRI",NAMBOODIRI],["BRAHMIN",BRAHMIN],["SUNNI",SUNNI]]
    
  end
  class Religion
    CHRISTIAN = 0
    HINDU = 1
    MUSLIM = 2
    SIKH = 3
    BUDDHIST = 4
     RELIGION_LIST = { CHRISTIAN => ["Christian"], HINDU => ["Hindu"], MUSLIM => ["Muslim"], SIKH => ["Sikh"],BUDDHIST => ["Buddhist"]}
     RELIGION_SELECT = [["Christian",CHRISTIAN],["Hindu",HINDU],["Muslim",MUSLIM],["Sikh",SIKH],["Buddhist",BUDDHIST]]
  end
  class Sex
    MALE = 0
    FEMALE = 1
    SEX_LIST = {MALE => ["Male"],FEMALE => ["Female"]}
    SEX_SELECT = [["Male",MALE],["Female",FEMALE]]
  end

    class Search_religion
   YES = 0
    NO = 1
    SEARCH_RELIGION_LIST = {YES => ["Yes"],NO => ["No"]}
    SEARCH_RELIGION_SELECT = [["Yes",YES],["No",NO]]
  end

  class Search_cast
    YES = 0
    NO = 1
    SEARCH_CAST_LIST =  {YES => ["Yes"],NO => ["No"]}
    SEARCH_CAST_SELECT =  [["Yes",YES],["No",NO]]
  end

  class Search_subcast
    YES = 0
    NO = 1
    SEARCH_SUBCAST_LIST =  {YES => ["Yes"],NO => ["No"]}
    SEARCH_SUBCAST_SELECT =  [["Yes",YES],["No",NO]]
  end

   class Search_job
     IT_PROFESSIONAL = 0
     MUSICIAN = 1
     ENGINEER = 2
     DOCTOR = 3
     MECHANIC = 4
     GOVERNMENT_EMPLOYEE = 5
     TEACHER = 6
     BUSINESS = 7
     SEARCH_JOB_LIST = {IT_PROFESSIONAL => ["IT_Professional"],MUSICIAN => ["Musician"],ENGINEER => ["Engineer"], DOCTOR => ["Doctor"], MECHANIC =>["Mechanic"], GOVERNMENT_EMPLOYEE => ["Government_Employee"], TEACHER => ["Teacher"], BUSINESS => ["Business"]}
     SEARCH_JOB_SELECT = [["IT_Professional",IT_PROFESSIONAL],["Musician",MUSICIAN],["Engineer",ENGINEER],["Doctor",DOCTOR],["MechaniC",MECHANIC],["Government_Employee",GOVERNMENT_EMPLOYEE],["Teacher",TEACHER],["Business",BUSINESS]]
   end

   class Search_mothertongue
     MALAYALAM = 0
     ENGLISH = 1
     HINDI = 2
     TAMIL = 3
     BENGALI = 4
     MANIPURI = 5
     SEARCH_MOTHERTONGUE_LIST = {MALAYALAM => ["Malayalam"],ENGLISH => ["English"], HINDI => ["Hindi"],TAMIL => ["Tamil"],BENGALI => ["Bengali"],MANIPURI => ["Manipuri"]}
     SEARCH_MOTHERTONGUE_SELECT = [["Malayalam",MALAYALAM],["English",ENGLISH],["Hindi",HINDI],["Tamil",TAMIL],["Bengali",BENGALI],["Manipuri",MANIPURI]]
   end
end
