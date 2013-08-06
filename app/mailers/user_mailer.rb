class UserMailer < ActionMailer::Base
  layout 'emails'
  default from: "nairubygroup@gmail.com", reply_to: "nairubygroup@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def notification(user, subject, message)
    @message = message.html_safe
    @user = user

    if !user.email.nil?
      mail(:to => @user.email, :subject => subject) do |format|
        format.html
      end
    end
  end
end
