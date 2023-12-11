class CardController < ApplicationController
    def new
        if current_user
        else 
            redirect_to "/login";
        end
    end

    def create

    end

    def delete

    end

    def update

    end
end