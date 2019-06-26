class UserMailer < ApplicationMailer
  default from: 'test@example.com'

  def welcome_email(user)
    mail(to: user.email, subject: 'Confirm Your Account')
  end
end
