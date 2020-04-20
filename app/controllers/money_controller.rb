class MoneyController < ApplicationController
    def show
        @money = Money.find(params[:id])
    end
    
    def create
        @money = Money.new(money_params)
        #@login = current_user
        @money.username = current_user.username
        begin
        if @money.save
            redirect_to @money
        else
            render 'new'
        end
        rescue
            redirect_to new_money_path, notice: "Budget is invalid"
        end
    end
    private
    def money_params
        params.require(:money).permit(:username,:category1,:total1)
    end
end
