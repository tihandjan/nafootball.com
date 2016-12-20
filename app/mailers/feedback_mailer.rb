class FeedbackMailer < ActionMailer::Base
    default from: 'no-reply@nafootball.com'
    
    def feedback body, email
        @body = body
        @email = email
        mail to: "tihandjan198921@gmail.com", subject: "Feedback from NaFootball"
    end
    
end
