class Feedback < ActiveRecord::Base
    validates :email, presence: true
    validates :body, presence: true
    
    after_create :send_mails
    
    def send_mails
      FeedbackMailer.feedback(self.body, self.email).deliver_now
    end
end
