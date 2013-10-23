class UserMailer < ActionMailer::Base
  default from: "elyrly@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/sessions/new'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
