class UserMailer < ApplicationMailer
  default from: "esharish94@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Welcome Email')
  end
end
