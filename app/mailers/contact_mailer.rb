class ContactMailer < ActionMailer::Base
  default to: 'disa.coty@gmail.com'
  
  def contact_email(email,name,body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: "Contact form message")

  end
end