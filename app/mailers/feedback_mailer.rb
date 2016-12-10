class FeedbackMailer < ActionMailer::Base
    default from: 'no-reply@EuroLiga.com'
    
    def feedback body, email
        @body = body
        @email = email
        mail to: "tihandjan198921@gmail.com", subject: "Feedback from EuroLiga"
    end
    
end
