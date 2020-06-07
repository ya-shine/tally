class BuyerManagementsController < ApplicationController

    def index
        @q = BuyerManagement.ransack(params[:q])
        @buyers = Buyer.all
        @products = Product.all
        @buyer_managements = @q.result
    end

    def search
        @q = BuyerManagement.search(search_params)
        @buyer_managemments = @q.result
    end

    def new
        @buyer_management = BuyerManagement.new
    end

    def create
        @buyer_management = BuyerManagement.new(buyer_management_params)
        @buyer_management.save
        redirect_to root_path
    end

    private
    def buyer_management_params
        params.permit(:buyer_id, :product_id)
    end

    def search_params
        params.require(:q).rermit!
    end
    
end