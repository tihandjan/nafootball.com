class FeedbackController < ApplicationController
   
   def create
       @feedback = Feedback.new(feedback_params)
       if @feedback.save
           flash[:notice] = "Спасибо за обращение! Мы с вами свяжемся в ближайшее время."
           redirect_to root_path
        else
            flash[:alert] = "Что-то пошло не так!!! Попробуйте отправить сообщение еще раз." 
            redirect_to root_path
       end
   end
   
   private
   
   def feedback_params
       params.require(:feedback).permit(:email, :body)
   end
    
end