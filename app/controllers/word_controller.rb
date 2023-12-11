class WordController < ApplicationController
    before_action :find_dictionary

    def new
        @word = @dictionary.words.new
    end

    def create
        @word = @dictionary.words.create(word_params)
        redirect_to dictionary_path(@dictionary)
    end

    def destroy
        @word = @dictionary.words.find(params[:id])
        @word.destroy
        #head :no_content
        redirect_to dictionary_path(@dictionary)
    end

    def edit
        @word = @dictionary.words.find(params[:id])
    end

    def update
        @word = @dictionary.words.find(params[:id])
        @word.update(word_params)

        redirect_to dictionary_path(@dictionary)
    end

    def show
        @word = @dictionary.words.find(params[:id])
    end

    private

    def find_dictionary
        @dictionary = current_user.dictionaries.find(params[:dictionary_id])
    end

    def word_params
        params.require(:word).permit(:word, :transcription, :translation)
    end
end
