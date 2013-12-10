class PostingMailer < ActionMailer::Base
  default from: "hello@ladieslearning.com"

  def confirmation_mailer(email)
  	@url = "http://jobs.ladieslearningcode.com"
  	mail(to: email, subject: "Hot Diggity! Job Posted!")
  end
end
