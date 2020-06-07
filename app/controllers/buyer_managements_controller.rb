class BuyerManagementsController < ApplicationController

    def index
        @buyers = Buyer.all
        @products = Product.all
    end
    
end
