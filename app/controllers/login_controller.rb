class LoginController < ApplicationController
    
    def show
        @login = Login.find(params[:id])
    end
    
    def new
    end
    
    def create
      @login = Login.new(login_params)
      begin
      if @login.save
        redirect_to @login
      else
        render 'new'
      end
      rescue
        
        redirect_to new_login_path, notice: "Username or Password invalid"
      end
    end
    private
        def login_params
            params.require(:login).permit(:username, :password)
        end
end
