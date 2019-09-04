class SongsController < ApplicationController
    def index
    end
    def show
        @song = Song.find(params[:id])
    end
    def new
        @song = Song.new
    end
    def create
        @song = Song.new(check_param)
        @song.save
        redirect_to song_path(@song)
    end
    def edit
        @song = Song.find(params[:id])
    end
    def update
        @song = Song.find(params[:id])
        @song.update(check_param)
        redirect_to song_path(@song)
    end
    private
    def check_param
        params.require(:song).permit(:name, :arist_id, :genre_id)
    end
end
