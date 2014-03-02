class FilmsController < ApplicationController
	
	def new
	end

	def create
		@film = Film.new(film_params)

		@film.save
		redirect_to @film
	end

	def show
	  @film = Film.find(params[:id])
	end

	def index
	  @films = Film.all
	end

	private
		def film_params
			params.require(:film).permit(:title)
		end

end