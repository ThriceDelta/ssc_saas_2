class ContactMailer < ActionMailer::Base
    default to: "katebutcher86@yahoo.co.uk"
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: "Contact Form Message from #{name}")
    end
end