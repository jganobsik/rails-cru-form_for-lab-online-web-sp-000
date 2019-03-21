class SongsController < ApplicationController
  def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
		@song = song.new
	end

	def create
	  @song = song.new(song_params)
	  @song.save
	  redirect_to song_path(@song)
	end

	def edit
		@song = song.find(params[:id])
	end

	def update
	  @song = song.find(params[:id])
	  @song.update(song_params)
	  redirect_to song_path(@song)
	end

	private

		def song_params
			params.require(:song).permit(:name, :bio)
		end
end
