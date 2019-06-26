class UserMailer < ApplicationMailer
  def welcome_email(user)
    mail(to: user.email, subject: 'Confirm Your Account')
  end
end
