class Usermailer < ActionMailer::Base
  def registration_confirmation(user)

    recipients user.email
    from "Mutual Matrimonials.com"
    subject "Thanks for registering"
    body :user => user
  end
  

end
