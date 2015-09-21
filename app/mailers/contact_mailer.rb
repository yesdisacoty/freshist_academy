class ContactMailer < ActionMailer::Base
  def contact_email(email,name,body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: "Contact form message")
  
  end
end  