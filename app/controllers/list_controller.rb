class ListController < ApplicationController
    def index
        if current_user
        else 
            redirect_to "/login";
        end
    end
end