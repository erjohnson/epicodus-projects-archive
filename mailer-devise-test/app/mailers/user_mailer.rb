class UserMailer < ActionMailer::Base
  default from: "theprince@nigeria.com"

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Sign Up Confirmation"
  end
end
