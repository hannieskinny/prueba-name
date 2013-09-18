class Notifier < ActionMailer::Base
  from_address = ActionMailer::Base.smtp_settings[:user_name]
  default from: "Comment App <#{from_address}>"
  def send_email_to
    subject = "Welcome Fulanito!"
    mail(:to => "hannieskinny@gmail.com", :subject => subject)
  end
end
