ActionMailer::Base.smtp_settings = {
:user_name => 'email', #Escribe tu email
:password => 'pass', #Escribe tu password
:address => 'smtp.gmail.com',
:port => 587,
:enable_starttls_auto => true
}
