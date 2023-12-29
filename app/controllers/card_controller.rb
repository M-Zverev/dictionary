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


    def random_word
        respond_to do |format|
            format.json { render json: { term: "some_term", translation: "some_translation" } }
        end
    end
end