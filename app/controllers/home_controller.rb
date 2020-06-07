class HomeController < ApplicationController

    def index
        @buyers = Buyer.all
        @products = Product.all
    end

end
