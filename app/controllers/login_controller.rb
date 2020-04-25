class LoginController < ApplicationController
    
    def show
        @login = Login.find(params[:id])
    end
    
    def new
    end
    
    def create
      if params[:account] == "1"
        
        @login = Login.new(login_params)
        begin
          if @login.save
            session[:login_id] = @login.id
            redirect_to new_money_path
          else
            render 'new'
          end
        rescue
          redirect_to new_login_path, notice: "Username or Password invalid"
        end
        
      else #run when you login with previously made account
        @login = Login.find_by(username: login_params["username"])
        @money = Money.find_by(username: login_params["username"])
        if @login != nil
          redirect_to money_url(@money)
        else
          redirect_to new_login_path, notice: "Username or Password invalid"
        end
      end
    end
    private
        def login_params
            params.require(:login).permit(:username, :password)
        end
end
