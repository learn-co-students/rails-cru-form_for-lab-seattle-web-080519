class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end
    def new
        @genre = Genre.new
    end
    def create
        @genre = Genre.new(param_check)
        @genre.save
        redirect_to genre_path(@genre)
    end
    def edit
        @genre = Genre.find(params[:id])
    end
    def update
        @genre = Genre.find(params[:id])
        @genre.update(param_check)
        redirect_to genre_path(@genre)
    end
    private
    def param_check
        params.require(:genre).permit(:name)
    end
end
