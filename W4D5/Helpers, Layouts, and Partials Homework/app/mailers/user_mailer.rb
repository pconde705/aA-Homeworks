class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user

    mail(to: user.username, subject: "Meow, you've purred your way to the kitty web")
  end

end
