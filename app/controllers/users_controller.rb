class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def edit
        if current_user.id.to_i == params[:id].to_i
            @user = User.find(params[:id])
        else
            flash[:notice] = "Не делай этого. 'May the Force be with you':)"
            redirect_to root_path
        end
        
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
           flash[:notice] = "Профиль успешно обновлен"
           redirect_to root_path
        else
            flash[:alert] = "Что-то пошло не так дружище"
            redirect_to root_path
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:username, :avatar, :team)
    end
    
end