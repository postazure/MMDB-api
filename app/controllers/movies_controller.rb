class MoviesController < ApplicationController
  def all
    @movies = Movie.all
    render json: @movies
  end
  def search
    search_params = {}
    search_params[:title] = params["t"] if params["t"]
    search_params[:year] = params["y"] if params["y"]
    @movies = Movie.where(search_params)
    render json: @movies
  end
end
