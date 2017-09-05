class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :update, :edit, :destroy]
  def index
    @songs = @artist.songs.all
  end

  def show
  end

  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def set_song
    @song = @artist.songs.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:)
  end
end
