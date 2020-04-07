class LoginController < ApplicationController
    
    def show
        @login = Login.find(params[:id])
    end
    
    def new
    end
    
    def create
      @login = Login.new(login_params)
     
      if @login.save
        redirect_to @login
      else
        render 'new'
      end
    end
    private
        def login_params
            params.require(:login).permit(:username, :password)
        end
end
