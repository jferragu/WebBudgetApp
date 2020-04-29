class MoneyController < ApplicationController
    def show
        @money = Money.find(params[:id])
    end
    
    def edit
        @money = Money.find(params[:id])
    end
    
    def update
        @money = Money.find(params[:id])
        @money.update(money_params)
        if @money.save
            redirect_to @money
        else
            redirect_to @money.index
        end
    end
    
    def create
        @money = Money.new(money_params)
        #@login = current_user
        @money.username = current_user.username
        puts "create called"
        @money.spent1 = 0.0
        @money.spent2 = 0.0
        @money.spent3 = 0.0
        @money.spent4 = 0.0
        @money.spent5 = 0.0
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
        params.require(:money).permit(:username,:category1,:total1,:spent1,
                                        :category2,:total2,:spent2,
                                        :category3,:total3,:spent3,
                                        :category4,:total4,:spent4,
                                        :category5,:total5,:spent5)
    end
end
