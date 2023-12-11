class DictController < ApplicationController
    def index
        if current_user
            @dictionary = Dictionary.new
            @dictionaries = current_user.dictionaries
        else
            redirect_to "/login";
        end
    end
    def new
        @dictionary = Dictionary.new
    end

    def create
        dict = Dictionary.create(dictionary_params.merge(user_id: current_user.id))
        redirect_to dictionary_path(dict)
    end

    def destroy
        if current_user
            @dictionary = current_user.dictionaries.find(params[:id])
            @dictionary.destroy
            redirect_to root_path
        else
            redirect_to "/login"
        end
    end

    def edit
        if current_user
            @dictionary = current_user.dictionaries.find(params[:id])
        else
            redirect_to "/login"
        end
    end

    def show
        if current_user
            @dictionary = current_user.dictionaries.find(params[:id])
            @words = @dictionary.words
        else
            redirect_to "/login";
        end
    end

    def update
        if current_user
            @dictionary = current_user.dictionaries.find(params[:id])
            @dictionary.update(dictionary_params)

            redirect_to dictionary_path(@dictionary)
        else
            redirect_to "/login";
        end
    end

    private
    def dictionary_params
        params.require(:dictionary).permit(:title)
    end
end