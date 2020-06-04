class HomeController < ApplicationController

    def index
        @buyers = Buyer.all
    end

end
