class BuyersController < ApplicationController

    def index
        @buyers = Buyer.all
    end

    def new
        @buyer = Buyer.new
    end

    def create
        @buyer = Buyer.new(buyer_params)
        @buyer.save
    end

    def edit
        @buyer = Buyer.find(params[:id])
    end

    def update
        buyer = Buyer.find(params[:id])
        buyer.update(buyer_params)
    end

    def destroy
        buyer = Buyer.find(params[:id])
        buyer.destroy
    end

    private
    def buyer_params
        params.require(:buyer).permit(:name)
    end

end
