class ArtistsController < ApplicationController
    def new
        @artist = Artist.new
    end
    def create
        @artist = Artist.new(param_v)
        @artist.save
        redirect_to artist_path(@artist)
    end
    def show
        @artist = Artist.find(params[:id])
    end
    def edit
        @artist = Artist.find(params[:id])
    end
    def update
        @artist = Artist.find(params[:id])
        @artist.update(param_v)
        redirect_to artist_path(@artist)
    end

    private
    def param_v
        params.require(:artist).permit(:name, :bio)
    end
end
