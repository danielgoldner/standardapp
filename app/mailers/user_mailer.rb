class UserMailer < ActionMailer::Base
  default from: "throwawayjobemail@gmail.com"

  def daily_email(message)
  	user = 'goldner.daniel@gmail.com'
  	mail(to: user, subject: 'Daily Attendance Email')
  end
end
