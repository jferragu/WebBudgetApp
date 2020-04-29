class LoginController < ApplicationController
    
    def show
        @login = Login.find(params[:id])
    end
    
    def new
    end
    
    def create
      if params[:account] == "1" #a new account is being made
        
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
        
      else #when you login with previously made account
        @login1 = Login.new(login_params)
        @login = Login.find_by(username: login_params["username"])
        @money = Money.find_by(username: login_params["username"])
        if @login != nil
          if @login.password == @login1.password
            #redirect_to new_login_path, notice: "Username or wPassword invalid"
            if @money != nil #password is validated from above
              redirect_to money_url(@money)
            else #no budget on account
              redirect_to new_money_path, notice: "budget hasn't been made yet"
            end
          else #wrong password
            redirect_to new_login_path, notice: "Username or Password Invalid"  
          end
        else #non-existing user
          redirect_to new_login_path, notice: "Username or Password invalid"  
        end
      end
    end
    private
        def login_params
            params.require(:login).permit(:username, :password)
        end
end
