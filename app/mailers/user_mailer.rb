class UserMailer < ActionMailer::Base
  default from: "from@example.com"

 def welcome_email(user)
   @user = user
   mail(:to => user.email, :subject => "Welcome to Berlin Bikes")
 end

 def contact_form(email, name, message)
  @message = message
  mail(:from => email,
  	:to => 'ryans970@hotmail.com',
  	:subject => "A new contact form message from #{name}")
 end
 def thank_you
   @name = params[:name]
   @email = params[:email]
   @message = params[:message]
   UserMailer.contact_form(@name, @email, @message).deliver
 end
 
end
